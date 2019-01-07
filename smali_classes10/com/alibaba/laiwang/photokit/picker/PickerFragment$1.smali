.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lhca$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 1167
    iget-object v2, v2, Lhca;->d:Ljava/util/List;

    .line 135
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 2167
    iget-object v2, v2, Lhca;->d:Ljava/util/List;

    .line 135
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 3167
    iget-object v0, v2, Lhca;->d:Ljava/util/List;

    .line 138
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lhbz;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhbz;

    .line 139
    .local v1, "f":Lhbz;
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v3

    .line 4044
    iget-object v4, v1, Lhbz;->b:Ljava/lang/String;

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Landroid/widget/TextView;

    move-result-object v2

    .line 4048
    iget-object v3, v1, Lhbz;->c:Ljava/lang/String;

    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lhbz;>;"
    .end local v1    # "f":Lhbz;
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhca;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4078
    iput-object v1, v0, Lhbl;->d:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v0

    invoke-virtual {v0}, Lhbl;->notifyDataSetChanged()V

    .line 159
    :cond_0
    return-void
.end method
