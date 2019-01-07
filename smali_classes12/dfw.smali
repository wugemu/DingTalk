.class public final Ldfw;
.super Ldfx;
.source "PreviewTextViewHolder.java"


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ldfx;-><init>()V

    .line 24
    iput-boolean p1, p0, Ldfw;->l:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Ldfw;->l:Z

    if-eqz v0, :cond_0

    sget v0, Lctk$g;->chatting_item_to:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lctk$g;->chatting_item_from:I

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-super {p0, p1, p2}, Ldfx;->a(Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->FromText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->ToText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    if-eq v0, v1, :cond_2

    .line 58
    :cond_0
    invoke-virtual {p0}, Ldfw;->d()V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Ldfw;->j:Landroid/widget/TextView;

    iget v1, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 65
    iget v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->c:I

    if-gtz v0, :cond_3

    .line 66
    iget-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    iget-object v1, p0, Ldfw;->g:Landroid/content/Context;

    sget v2, Lctk$i;->chat_item_unreadcount_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->c:I

    .line 70
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Ldfw;->l:Z

    if-eqz v0, :cond_0

    sget v0, Lctk$g;->chatting_item_to_text:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lctk$g;->chatting_item_from_text:I

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v0, p0, Ldfw;->a:Landroid/view/View;

    sget v1, Lctk$f;->chatting_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfw;->e:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Ldfw;->a:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfw;->j:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Ldfw;->a:Landroid/view/View;

    sget v1, Lctk$f;->chatting_unreadcount_tv1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-super {p0}, Ldfx;->d()V

    .line 47
    iget-object v0, p0, Ldfw;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Ldfw;->k:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method
