.class public final Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;
.super Lgl;
.source "ChatAppViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 94
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->c:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    .line 98
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "pagerIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 148
    if-ne p1, v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcig$e;->emotion_slide_dot_hover:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcig$e;->emotion_slide_dot_normal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 154
    :cond_1
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 166
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 169
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 185
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;

    .line 175
    .local v0, "viewPagerHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->a:Landroid/view/View;

    .line 180
    .end local v0    # "viewPagerHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 161
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
