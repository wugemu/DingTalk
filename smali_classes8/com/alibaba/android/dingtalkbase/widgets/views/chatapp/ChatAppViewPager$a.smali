.class public final Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;
.super Landroid/widget/BaseAdapter;
.source "ChatAppViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;Ljava/util/List;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;
    .param p3, "fixedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->chat_app_grid_item_place_holder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->c:Landroid/view/View;

    .line 202
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->d:I

    .line 203
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->d:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 214
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;->c:Landroid/view/View;

    goto :goto_0
.end method
