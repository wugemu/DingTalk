.class public Lcom/alibaba/android/dingtalkim/activities/VideoExtActivity;
.super Lcom/taobao/TaoFullScreenRecordVideoActivity;
.source "VideoExtActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 20
    .line 1025
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoExtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_0

    .line 1027
    const-string/jumbo v1, "pref_current_locale"

    const-string/jumbo v2, "zh_CN"

    invoke-static {v1, v2}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1029
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 1031
    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-direct {v2, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1032
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoExtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoExtActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 21
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
