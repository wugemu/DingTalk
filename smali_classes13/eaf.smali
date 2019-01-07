.class public final Leaf;
.super Ldzl;
.source "SearchHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->layout_session_search_header:I

    return v0
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-object v0, p0, Leaf;->a:Landroid/view/View;

    sget v1, Lctk$f;->search_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Leaf;->a:Landroid/view/View;

    sget v1, Lctk$f;->search_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    iput-object v0, p0, Leaf;->f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 23
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Leaf;->f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->SEARCH:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Leaf;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p0, Leaf;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->d(Landroid/content/Context;)V

    goto :goto_0
.end method
