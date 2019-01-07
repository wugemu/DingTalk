.class public final Lczu;
.super Lczv;
.source "UserSpaceVideoToViewHolder.java"


# instance fields
.field protected a:Ldac;

.field private ad:Lcxo;

.field protected b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lczv;-><init>(Z)V

    .line 27
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "isEnable"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    const/high16 v1, 0x77000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 69
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 74
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    .line 46
    .local v0, "status":Lcom/alibaba/wukong/im/Message$MessageStatus;
    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_3

    .line 47
    iget-object v1, p0, Lczu;->Y:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lczu;->a(Landroid/widget/ImageView;Z)V

    .line 48
    iget-object v1, p0, Lczu;->Y:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lczu;->a(Landroid/widget/ImageView;)V

    .line 49
    iget-object v1, p0, Lczu;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50
    iget-object v1, p0, Lczu;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :goto_1
    iget-object v1, p0, Lczu;->a:Ldac;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lczu;->a:Ldac;

    iget-boolean v2, p0, Lczu;->T:Z

    invoke-virtual {v1, p1, p2, v2}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 61
    :cond_2
    iget-object v1, p0, Lczu;->ad:Lcxo;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lczu;->ad:Lcxo;

    iget-object v2, p0, Lczu;->d:Landroid/app/Activity;

    iget-object v3, p0, Lczu;->X:Lcom/alibaba/wukong/im/Message;

    iget-object v4, p0, Lczu;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v1, v2, v3, v4}, Lcxo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 63
    iget-object v1, p0, Lczu;->ad:Lcxo;

    invoke-virtual {v1}, Lcxo;->a()V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, p0, Lczu;->Y:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lczu;->a(Landroid/widget/ImageView;Z)V

    .line 53
    iget-object v1, p0, Lczu;->Y:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lczu;->b(Landroid/widget/ImageView;)V

    .line 54
    iget-object v1, p0, Lczu;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 55
    iget-object v1, p0, Lczu;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lctk$g;->chatting_item_to_space_video:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v2, p0, Lczu;->P:Lcts$b;

    invoke-static {p1, v2}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v2

    iput-object v2, p0, Lczu;->a:Ldac;

    .line 32
    iget-object v2, p0, Lczu;->r:Landroid/view/View;

    sget v3, Lctk$f;->video_play_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lczu;->b:Landroid/widget/ImageView;

    .line 34
    iget-object v2, p0, Lczu;->r:Landroid/view/View;

    sget v3, Lctk$f;->round_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 35
    .local v1, "uploadProgressBar":Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;
    iget-object v2, p0, Lczu;->r:Landroid/view/View;

    sget v3, Lctk$f;->img_cancel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .local v0, "imgCancel":Landroid/widget/ImageView;
    new-instance v2, Lcxo;

    iget-object v3, p0, Lczu;->d:Landroid/app/Activity;

    iget-object v4, p0, Lczu;->X:Lcom/alibaba/wukong/im/Message;

    invoke-direct {v2, v3, v4, v1, v0}, Lcxo;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lczu;->ad:Lcxo;

    .line 38
    return-void
.end method
