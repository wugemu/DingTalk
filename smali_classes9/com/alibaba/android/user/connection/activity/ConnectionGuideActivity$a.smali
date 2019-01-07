.class final Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;
.super Lgl;
.source "ConnectionGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 152
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->item_connection_guide:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "itemView":Landroid/view/View;
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    .line 154
    .local v0, "guideDataItem":Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;
    sget v3, Lezg$h;->iv_guide_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    .local v1, "guideImageView":Landroid/widget/ImageView;
    sget v3, Lezg$h;->tv_guide_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    new-instance v3, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-object v2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 140
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
