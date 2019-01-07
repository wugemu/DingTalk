.class public final Lcxf;
.super Lcxg;
.source "SessionCategoryItemHolder.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcxg;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lctk$g;->session_item_category_span:I

    return v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    sget v0, Lctk$f;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxf;->A:Landroid/widget/TextView;

    .line 36
    sget v0, Lctk$f;->top_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxf;->B:Landroid/view/View;

    .line 37
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcxf;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 42
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcxf;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 47
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcxf;->A:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    invoke-static {v0, v2, v3}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcxf;->B:Landroid/view/View;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
