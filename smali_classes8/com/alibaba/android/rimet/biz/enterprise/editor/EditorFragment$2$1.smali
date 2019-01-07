.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;
.super Landroid/text/SpannableStringBuilder;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;
    .param p2, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final clearSpans()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 196
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 197
    .local v1, "message":Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcqj;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcqj;

    .line 198
    .local v0, "list":[Lcqj;
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v2, v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;[Lcqj;)V

    .line 199
    invoke-super {p0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 200
    return-void
.end method

.method public final bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final delete(II)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 178
    const-class v1, Lcqj;

    invoke-virtual {p0, p1, p2, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcqj;

    .line 179
    .local v0, "imageSpans":[Lcqj;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;[Lcqj;)V

    .line 180
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcqj;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 186
    check-cast v0, Lcqj;

    .line 187
    .local v0, "span":Lcqj;
    const/4 v2, 0x1

    new-array v1, v2, [Lcqj;

    .line 188
    .local v1, "spans":[Lcqj;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 189
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v2, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;[Lcqj;)V

    .line 191
    .end local v0    # "span":Lcqj;
    .end local v1    # "spans":[Lcqj;
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 192
    return-void
.end method
