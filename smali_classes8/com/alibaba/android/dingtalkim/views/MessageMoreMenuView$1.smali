.class final Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;
.super Lgl;
.source "MessageMoreMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup;

    .line 174
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->c(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public final getCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;->a()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 137
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 138
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Lctk$g;->message_more_menu_page_view:I

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 142
    .local v4, "page":Landroid/view/ViewGroup;
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;->a()I

    move-result v3

    .line 143
    .local v3, "l":I
    :goto_1
    mul-int/lit8 v1, p2, 0x5

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/4 v6, 0x5

    if-ge v2, v6, :cond_4

    .line 144
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 145
    .local v5, "v":Landroid/view/View;
    if-ge v1, v3, :cond_3

    .line 146
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v8

    sget v6, Lctk$f;->message_more_menu_item_icon:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v8, v1, v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;->a(ILandroid/widget/ImageView;)V

    .line 149
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v8

    sget v6, Lctk$f;->message_more_menu_item_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v8, v1, v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;->a(ILandroid/widget/TextView;)V

    .line 150
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v6

    invoke-interface {v6, v1, v5}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;->a(ILandroid/view/View;)V

    .line 151
    move v0, v1

    .line 152
    .local v0, "clickId":I
    new-instance v6, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;-><init>(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->b(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Z

    move-result v8

    invoke-static {v6, v5, v8}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;Landroid/view/View;Z)V

    .line 161
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->c(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v0    # "clickId":I
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 140
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "l":I
    .end local v4    # "page":Landroid/view/ViewGroup;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->b:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4    # "page":Landroid/view/ViewGroup;
    goto :goto_0

    :cond_2
    move v3, v7

    .line 142
    goto :goto_1

    .line 164
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "l":I
    .restart local v5    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 167
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    return-object v4
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
