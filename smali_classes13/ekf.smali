.class public final Lekf;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "CompatibleNotificationCompatBuilder.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lekf;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lekf;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dtChannel"    # Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .prologue
    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 37
    new-instance v1, Lekf;

    invoke-direct {v1, p0}, Lekf;-><init>(Landroid/content/Context;)V

    .line 40
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-static {}, Lclp;->a()Lclp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lclp;->a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "channelId":Ljava/lang/String;
    new-instance v1, Lekf;

    invoke-direct {v1, p0, v0}, Lekf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "icon"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .local v2, "version":I
    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x16

    if-ne v2, v3, :cond_2

    .line 49
    :cond_0
    iget-object v3, p0, Lekf;->a:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 68
    .end local p0    # "this":Lekf;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "this":Lekf;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lekf;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 56
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "notification"

    const-string/jumbo v5, "small icon drawable null!"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lekf;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-super {p0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 62
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "notification"

    const-string/jumbo v5, "small icon id not found!"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lekf;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-super {p0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 67
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "notification"

    const-string/jumbo v5, "small icon correct."

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p0

    goto :goto_0
.end method
