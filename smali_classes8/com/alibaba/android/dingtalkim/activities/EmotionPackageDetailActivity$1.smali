.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;
.super Ljava/lang/Object;
.source "EmotionPackageDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldre;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    check-cast p1, Ldre;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;Ldre;)Ldre;

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Ldre;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1132
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldpt;->c(J)Ljava/util/List;

    move-result-object v2

    .line 1133
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Ldre;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ldre;->b:Ljava/util/List;

    .line 1135
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1136
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 1137
    if-eqz v0, :cond_0

    .line 1138
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Ldre;

    move-result-object v3

    iget-object v3, v3, Ldre;->b:Ljava/util/List;

    new-instance v4, Ldrl;

    invoke-direct {v4, v0}, Ldrl;-><init>(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;Z)Z

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v0, "err_parameter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 150
    return-void
.end method
