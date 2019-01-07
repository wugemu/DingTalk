.class final Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 95
    if-eqz p2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .line 1367
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 97
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Liff$f;->choose_picture_reach_max:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhcn;->a(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 105
    .local v0, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 109
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->f(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->f(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto :goto_0

    .line 117
    .end local v0    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1, p2}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;Z)Z

    goto :goto_0
.end method
