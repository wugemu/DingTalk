.class final Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;
.super Ljava/lang/Object;
.source "SimilarGroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->b(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->b(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->c(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Ldjh;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->d(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)V

    goto :goto_0
.end method