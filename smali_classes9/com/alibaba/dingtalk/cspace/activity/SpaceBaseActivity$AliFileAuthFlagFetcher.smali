.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;
.super Lgaj;
.source "SpaceBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliFileAuthFlagFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgaj",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 2158
    invoke-direct {p0}, Lgaj;-><init>()V

    .line 2159
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a:Landroid/content/Context;

    .line 2160
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 2154
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
    .locals 6
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2163
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2223
    :goto_0
    return-void

    .line 2166
    :cond_0
    if-nez p1, :cond_1

    .line 2167
    const-string/jumbo v3, "null dentry"

    sget v4, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 2168
    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 2167
    invoke-static {v3, v4, p2}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2171
    :cond_1
    invoke-static {p1}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 2172
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2173
    const-string/jumbo v3, "null cacheKey"

    sget v4, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 2174
    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 2173
    invoke-static {v3, v4, p2}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2178
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2179
    .local v0, "cacheAuthFlag":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2180
    invoke-static {v0, p2}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0

    .line 2184
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a:Landroid/content/Context;

    invoke-static {v3}, Lgpr;->c(Landroid/content/Context;)V

    .line 2185
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;Ljava/lang/String;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2221
    .local v2, "infoListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "infoListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v2, Lcma;

    .line 2222
    .restart local v2    # "infoListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
