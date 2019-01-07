.class final Lcqt$5;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 188
    iput-object p1, p0, Lcqt$5;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x7

    .line 193
    iget-object v0, p0, Lcqt$5;->a:Lcqt;

    .line 1039
    iget-object v0, v0, Lcqt;->d:Lcqt$b;

    .line 193
    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcqt$5;->a:Lcqt;

    .line 2039
    iget-object v3, v0, Lcqt;->d:Lcqt$b;

    .line 194
    iget-object v0, p0, Lcqt$5;->a:Lcqt;

    .line 3039
    iget-object v0, v0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 194
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcqt$5;->a:Lcqt;

    iget-object v0, p0, Lcqt$5;->a:Lcqt;

    .line 4039
    iget-object v0, v0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 194
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v0

    .line 5369
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5370
    iget-object v1, v5, Lcqt;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v0

    .line 5371
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5372
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 5374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5375
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "@"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5376
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5377
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "@"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "@"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 5379
    goto :goto_0

    .line 5380
    :cond_0
    iget-object v0, v5, Lcqt;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 194
    invoke-interface {v3, v4, v6}, Lcqt$b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcqt$5;->a:Lcqt;

    invoke-virtual {v0}, Lcqt;->b()V

    .line 197
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
