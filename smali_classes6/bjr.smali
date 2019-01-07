.class public final Lbjr;
.super Ljava/lang/Object;
.source "DingDeleteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1217
    if-eqz p0, :cond_0

    .line 1220
    if-eqz p1, :cond_0

    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    invoke-static {}, Lbju;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1225
    new-instance v0, Lbkl$13;

    invoke-direct {v0, p0, p1, p2}, Lbkl$13;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    invoke-static {p0, v0}, Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1236
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 1238
    :cond_2
    invoke-static {p0, p1, p2}, Lbjr;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {p0, p1, p2}, Lbjr;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    if-eqz p1, :cond_0

    .line 38
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 39
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 42
    :cond_2
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    new-instance v2, Lbjr$1;

    invoke-direct {v2, p0, p2}, Lbjr$1;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, p1, v1, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V

    goto :goto_0
.end method
