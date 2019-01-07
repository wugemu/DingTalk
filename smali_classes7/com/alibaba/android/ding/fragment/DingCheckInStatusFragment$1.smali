.class final Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;
.super Ljava/lang/Object;
.source "DingCheckInStatusFragment.java"

# interfaces
.implements Lbhr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f()Lbhr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;Z)Z

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)V

    goto :goto_0
.end method

.method public final a(Lbfw;)V
    .locals 4
    .param p1, "objectV3"    # Lbfw;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;Z)Z

    .line 191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)Laxw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    iget-object v0, p1, Lbfw;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;Z)Z

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)I

    move-result v0

    if-nez v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p1, Lbfw;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)I

    move-result v2

    iget-object v3, p1, Lbfw;->e:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v1, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;I)I

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 194
    goto :goto_1

    .line 201
    :cond_5
    iget-object v0, p1, Lbfw;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method
