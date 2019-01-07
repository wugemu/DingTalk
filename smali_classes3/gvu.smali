.class public abstract Lgvu;
.super Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
.source "DTBaseShareUnit.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V
    .locals 4
    .param p1, "shareUnitInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 30
    const-string/jumbo v1, "share-impl"

    iput-object v1, p0, Lgvu;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 37
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/ShareConstants;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareConstants;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 150
    if-nez p0, :cond_1

    .line 156
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "shareListener":Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;
    :cond_0
    :goto_0
    return-object p1

    .line 153
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "shareListener":Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 154
    const-class v0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p1, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-object p1, v0

    goto :goto_0
.end method

.method protected static a(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p0, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 125
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getExtention()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getExtention()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 128
    .restart local v0    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_0
    return-void
.end method

.method protected static b()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v1, "THREAD"

    .line 109
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 110
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 111
    const-string/jumbo v1, "share-impl"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 6
    .param p1, "traceTag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1135
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v2

    .line 1136
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 140
    :goto_0
    if-eqz v2, :cond_1

    .line 146
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1136
    goto :goto_0

    .line 143
    :cond_1
    sget v2, Lgvn$h;->dt_share_wechat_not_installed:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 144
    const-string/jumbo v2, "share"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string/jumbo v5, " share failed, wechat not installed"

    aput-object v5, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 146
    goto :goto_1
.end method
