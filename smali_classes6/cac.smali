.class public final Lcac;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 16
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lbzz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p0, p1}, Lcac;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcac$1;

    invoke-direct {v1, p0, p1}, Lcac$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v1, Lcac;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 37
    :cond_0
    sput-object p1, Lcac;->a:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 40
    .local v0, "toast":Landroid/widget/Toast;
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v1

    new-instance v2, Lcac$2;

    invoke-direct {v2}, Lcac$2;-><init>()V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
