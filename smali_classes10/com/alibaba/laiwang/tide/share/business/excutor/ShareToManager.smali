.class public Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;
.super Ljava/lang/Object;
.source "ShareToManager.java"


# static fields
.field private static manager:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;


# instance fields
.field private mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

.field private mContext:Landroid/content/Context;

.field private mLwExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

.field private mQQExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

.field private mSinaWeiboExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;

.field private mWeiXinExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mConstants"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p2, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "constans \u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->manager:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "constants"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->manager:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;-><init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    sput-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->manager:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 45
    return-void
.end method

.method public getLWExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mLwExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;-><init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mLwExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mLwExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    return-object v0
.end method

.method public getQQExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mQQExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    if-nez v0, :cond_0

    .line 67
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;-><init>(Landroid/app/Activity;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mQQExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mQQExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    return-object v0

    .line 70
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "qq excutor need context as Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSinaExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;-><init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    return-object v0
.end method

.method public getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mWeiXinExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;-><init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mWeiXinExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->mWeiXinExecutor:Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    return-object v0
.end method

.method public handleWeiboResponse(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    return-void
.end method
