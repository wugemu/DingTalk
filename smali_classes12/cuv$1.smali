.class public final Lcuv$1;
.super Ljava/lang/Object;
.source "EmotionPackageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

.field final synthetic b:Lcuv;


# direct methods
.method public constructor <init>(Lcuv;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 0
    .param p1, "this$0"    # Lcuv;

    .prologue
    .line 199
    iput-object p1, p0, Lcuv$1;->b:Lcuv;

    iput-object p2, p0, Lcuv$1;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    iget-object v1, p0, Lcuv$1;->b:Lcuv;

    .line 1028
    iget-object v1, v1, Lcuv;->d:Landroid/app/Activity;

    .line 202
    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcuv$1;->b:Lcuv;

    .line 2028
    iget-object v1, v1, Lcuv;->d:Landroid/app/Activity;

    .line 203
    sget v2, Lctk$i;->network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    iget-object v2, p0, Lcuv$1;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-virtual {v1, v2}, Ldpt;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 207
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    iget-object v2, p0, Lcuv$1;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-virtual {v1, v2, v3}, Ldpt;->f(J)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "statisMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "p_id"

    iget-object v2, p0, Lcuv$1;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "dt_im_emotion_package_download"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
