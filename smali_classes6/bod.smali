.class public final Lbod;
.super Lbnv;
.source "TakePhotoViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "item"    # Landroid/view/View;

    .prologue
    .line 21
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lbnv;-><init>(Landroid/view/View;Lboq;)V

    .line 22
    sget v1, Lbpu$d;->take_photo:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 34
    .local v1, "id":I
    sget v2, Lbpu$d;->take_photo:I

    if-ne v1, v2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 37
    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lbnn;

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-direct {v3, v0}, Lbnn;-><init>(Landroid/app/Activity;)V

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;Lbnn;)V

    .line 40
    :cond_0
    return-void
.end method
