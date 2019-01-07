.class public final Lcmv;
.super Ljava/lang/Object;
.source "DDPopupWindowManager.java"


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

.field b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

.field c:Ljava/lang/Runnable;

.field d:Landroid/app/Activity;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;",
            "Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "com.alibaba-inc.ding.notification.enabled"

    iput-object v0, p0, Lcmv;->f:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcmv;->e:Ljava/util/Map;

    .line 39
    new-instance v0, Lcmv$1;

    invoke-direct {v0, p0}, Lcmv$1;-><init>(Lcmv;)V

    iput-object v0, p0, Lcmv;->c:Ljava/lang/Runnable;

    .line 101
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcmv$2;

    invoke-direct {v1, p0}, Lcmv$2;-><init>(Lcmv;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 158
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V
    .locals 3
    .param p1, "showType"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 183
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "cannot call showPopupWindow outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 1021
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 188
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 2021
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 189
    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 2029
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 190
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 3029
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "popwindow_to_show_been_canceled"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcmv;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iput-object v2, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 197
    :cond_1
    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 4021
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 198
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 5021
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 199
    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 5029
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 200
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 6029
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string/jumbo v0, "popwindow_showing_been_canceled"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a()V

    .line 204
    iput-object v2, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 206
    :cond_2
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V
    .locals 4
    .param p1, "ddPopupWindowShowObject"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v0, "popwindow_called_show"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 163
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_1

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "cannot call showPopupWindow outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    if-nez p1, :cond_2

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 172
    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_4
    iput-object p1, p0, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 177
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcmv;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcmv;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
