.class final Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 578
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 580
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/util/HashMap;

    move-result-object v3

    .line 1268
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    .line 586
    return-void

    .line 1270
    :cond_1
    iget-boolean v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->i:Z

    if-eqz v0, :cond_6

    .line 1271
    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    .line 1273
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1275
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1278
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 1279
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->n:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1281
    :cond_3
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1283
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->g:Ljava/io/File;

    iput-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->f:Ljava/io/File;

    .line 1284
    iput-object v4, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    .line 1287
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    iget-object v1, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1288
    if-nez v0, :cond_4

    .line 1289
    const-string/jumbo v0, "//ALLSDCARD//"

    iget-object v1, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    iget-object v1, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1297
    :cond_4
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->m:Z

    goto :goto_0

    .line 1289
    :cond_5
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1302
    :cond_6
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 582
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
