.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;
.super Lgl;
.source "CircleGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 149
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lbpu$e;->item_circle_guide:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "itemView":Landroid/view/View;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    .line 151
    .local v0, "guideDataItem":Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;
    sget v3, Lbpu$d;->iv_guide_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .local v1, "guideImageView":Landroid/widget/ImageView;
    sget v3, Lbpu$d;->tv_guide_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-object v2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 137
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
