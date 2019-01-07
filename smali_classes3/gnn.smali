.class public final Lgnn;
.super Lgly;
.source "SpaceMenuSendFileLinkHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JLcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    const-string/jumbo v2, "null param"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 50
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v2, v3, p4}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 78
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 54
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "spaceType":I
    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lgqu;->d(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    const-string/jumbo v2, "invalid spaceType, only for PublicArea and Cooperation space"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 57
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v2, v3, p4}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 62
    :cond_2
    new-instance v0, Lglj$d;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0, p1, p2, p3}, Lglj$d;-><init>(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;J)V

    .line 1158
    .local v0, "sender":Lglj$d;
    iput-object p4, v0, Lglj$d;->b:Lcma;

    .line 64
    invoke-virtual {v0}, Lglj$d;->d()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgnn;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p2, Lgmb;->d:J

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Lgnn;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JLcma;)V

    goto :goto_0
.end method
