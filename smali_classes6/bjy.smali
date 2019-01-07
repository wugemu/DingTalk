.class public final Lbjy;
.super Ljava/lang/Object;
.source "DingRemindLaterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZI)V
    .locals 7
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 23
    .line 2836
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2837
    const-string/jumbo v0, "minutes"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    const-string/jumbo v2, "isFloat"

    if-eqz p2, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    const-string/jumbo v0, "ding_bluepop_later_actionsheet_click"

    invoke-static {v0, v1}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 2083
    if-eqz p1, :cond_0

    .line 2086
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 3109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2086
    new-instance v0, Lbjy$2;

    invoke-direct {v0, p3}, Lbjy$2;-><init>(I)V

    const-class v4, Lcma;

    .line 2088
    invoke-static {v0, v4, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 3169
    iget-object v6, v1, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$8;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbbp$8;-><init>(Lbbp;JILcma;)V

    invoke-virtual {v6, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 23
    :cond_0
    return-void

    .line 2838
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isFloat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {p0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    instance-of v0, p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 38
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v4, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v6, Laxp$b;->ding_menu_remind_later:I

    new-instance v0, Lbjy$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbjy$1;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v4, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
