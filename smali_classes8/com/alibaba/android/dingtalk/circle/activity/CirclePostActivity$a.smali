.class final Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

.field private final b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 0
    .param p2, "photo"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 924
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p2, "x1"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .prologue
    .line 920
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 928
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 929
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 931
    .local v10, "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v10, :cond_0

    .line 934
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    iget-object v3, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 935
    .local v0, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 937
    .end local v0    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    .end local v10    # "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 938
    .local v8, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "album_preview_items"

    check-cast v9, Ljava/io/Serializable;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 939
    const-string/jumbo v1, "album_preview_index"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 940
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 942
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_2
    return-void
.end method
