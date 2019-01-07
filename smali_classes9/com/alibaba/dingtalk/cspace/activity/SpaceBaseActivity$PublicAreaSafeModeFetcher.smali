.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;
.super Lgaj;
.source "SpaceBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublicAreaSafeModeFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgaj",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2090
    invoke-direct {p0}, Lgaj;-><init>()V

    .line 2091
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a:Landroid/content/Context;

    .line 2092
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 2086
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2095
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p3, :cond_0

    .line 2151
    :goto_0
    return-void

    .line 2098
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2099
    :cond_1
    const-string/jumbo v1, "null dentry"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 2100
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 2099
    invoke-static {v1, v3, p3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2103
    :cond_2
    invoke-static {p1, p2}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2104
    .local v2, "cacheKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2105
    const-string/jumbo v1, "null cacheKey"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 2106
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 2105
    invoke-static {v1, v3, p3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2110
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 2111
    .local v6, "cacheSafeMode":Ljava/lang/Boolean;
    if-eqz v6, :cond_4

    .line 2112
    invoke-static {v6, p3}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0

    .line 2116
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a:Landroid/content/Context;

    invoke-static {v1}, Lgpr;->c(Landroid/content/Context;)V

    .line 2117
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    .local v0, "safeModeListener":Lcma;, "Lcma<Lgnw;>;"
    const-class v1, Lcma;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "safeModeListener":Lcma;, "Lcma<Lgnw;>;"
    check-cast v0, Lcma;

    .line 2150
    .restart local v0    # "safeModeListener":Lcma;, "Lcma<Lgnw;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lgon;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
