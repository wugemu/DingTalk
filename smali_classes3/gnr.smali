.class public final Lgnr;
.super Lgly;
.source "SpaceMenuWebSaveHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 34
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgnr;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v4, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 40
    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-wide v0, p2, Lgmb;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, p2, Lgmb;->b:Ljava/lang/String;

    invoke-static {p1, v4, v5, v0}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-wide v2, p2, Lgmb;->d:J

    iget-object v6, p2, Lgmb;->b:Ljava/lang/String;

    sget-object v7, Lfzu;->d:Lcma;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
