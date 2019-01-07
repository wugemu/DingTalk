.class public Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;
.super Lgvu;
.source "LaiwangDynamicShareUnit.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    new-instance v1, Lgwa;

    invoke-direct {v1}, Lgwa;-><init>()V

    .line 1088
    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1089
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1090
    sget v2, Lgvn$d;->ic_share_laiwang_dynamic:I

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1091
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lgvn$h;->share_laiwang_dynamic:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1092
    const-string/jumbo v0, "com.alibaba.android.babylon"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1093
    const-string/jumbo v0, "LW_DYNAMIC"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1094
    const-string/jumbo v0, "dynamic"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, v1}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 25
    const-string/jumbo v0, "lwfrom=user_lwdynnamic"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;->b:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;->b:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 11
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[LaiwangDynamicShareUnit] share clicked"

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[LaiwangDynamicShareUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "url":Ljava/lang/String;
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v0, :cond_1

    move-object v8, p1

    .line 48
    check-cast v8, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1944
    .local v8, "info":Lcom/alibaba/dingtalk/share/share/ShareManager$b;
    iget-object v10, v8, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->c:Ljava/lang/String;

    .line 51
    .local v10, "tmp":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-static {v10}, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .end local v8    # "info":Lcom/alibaba/dingtalk/share/share/ShareManager$b;
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_1
    move-object v9, v5

    .line 56
    .local v9, "shareUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getLWExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit$1;

    invoke-direct {v7, p0, v9}, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;Ljava/lang/String;)V

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->shareImageUrlToDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V

    goto :goto_0
.end method
