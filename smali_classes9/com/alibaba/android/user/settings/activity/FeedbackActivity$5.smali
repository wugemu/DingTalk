.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrs;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Lfrs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->a:Lfrs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 234
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v5, "uploadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, "imagePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Lhch;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 238
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "imagePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 243
    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x77b

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    :cond_2
    return-void

    .line 245
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 246
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 247
    move v1, v2

    .line 248
    .local v1, "finalI":I
    invoke-static {}, Lify;->a()Lify;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v8, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;

    invoke-direct {v8, p0, v1, v4}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;II)V

    invoke-virtual {v7, v6, v8}, Lify;->a(Ljava/lang/String;Lifw;)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
