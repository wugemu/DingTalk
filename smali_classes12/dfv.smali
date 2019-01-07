.class public final Ldfv;
.super Ldfx;
.source "PreviewSystemViewHolder.java"


# instance fields
.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ldfx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lctk$g;->chatting_item_system:I

    return v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Ldfx;->a(Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 41
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->System:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Ldfv;->d()V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Ldfv;->j:Landroid/widget/TextView;

    iget v1, p1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Ldfv;->a:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfv;->j:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-super {p0}, Ldfx;->d()V

    .line 35
    iget-object v0, p0, Ldfv;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
