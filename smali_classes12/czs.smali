.class public final Lczs;
.super Lczw;
.source "UserSpaceToViewHolder.java"


# instance fields
.field protected Y:Ldac;

.field private aa:Lcxo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lczw;-><init>(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lczw;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 51
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lczs;->Y:Ldac;

    iget-boolean v1, p0, Lczs;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 46
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lczw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 57
    iget-object v0, p0, Lczs;->aa:Lcxo;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lczs;->aa:Lcxo;

    iget-object v1, p0, Lczs;->d:Landroid/app/Activity;

    iget-object v2, p0, Lczs;->X:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lczs;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v0, v1, v2, v3}, Lcxo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 59
    iget-object v0, p0, Lczs;->aa:Lcxo;

    invoke-virtual {v0}, Lcxo;->a()V

    .line 61
    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lctk$g;->chatting_item_to_file:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v2, p0, Lczs;->P:Lcts$b;

    invoke-static {p1, v2}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v2

    iput-object v2, p0, Lczs;->Y:Ldac;

    .line 37
    iget-object v2, p0, Lczs;->r:Landroid/view/View;

    sget v3, Lctk$f;->round_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 38
    .local v1, "uploadProgressBar":Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;
    iget-object v2, p0, Lczs;->r:Landroid/view/View;

    sget v3, Lctk$f;->img_cancel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, "imgCancel":Landroid/widget/ImageView;
    new-instance v2, Lcxo;

    iget-object v3, p0, Lczs;->d:Landroid/app/Activity;

    iget-object v4, p0, Lczs;->X:Lcom/alibaba/wukong/im/Message;

    invoke-direct {v2, v3, v4, v1, v0}, Lcxo;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lczs;->aa:Lcxo;

    .line 41
    return-void
.end method
