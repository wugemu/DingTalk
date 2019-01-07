.class final Lcom/taobao/windmill/bundle/WMLActivity$1;
.super Ljava/lang/Object;
.source "WMLActivity.java"

# interfaces
.implements Ljqh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/WMLActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/WMLActivity;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/WMLActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "logo"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$300(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V
    .locals 4
    .param p1, "errorTitle"    # Ljava/lang/String;
    .param p2, "errorDesc"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 251
    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->downgradeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v1, p5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->downgradeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/windmill/bundle/WMLActivity;->onStartActivityByUrl(Ljava/lang/String;)Z

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taobao/windmill/bundle/WMLActivity$1$2;

    invoke-direct {v1, p0}, Lcom/taobao/windmill/bundle/WMLActivity$1$2;-><init>(Lcom/taobao/windmill/bundle/WMLActivity$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$300(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->hide()V

    .line 262
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    new-instance v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-direct {v1}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/windmill/bundle/WMLActivity;->access$102(Lcom/taobao/windmill/bundle/WMLActivity;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 264
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    new-instance v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-direct {v1}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;-><init>()V

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 265
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/windmill/bundle/WMLActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljqi;)V
    .locals 8
    .param p1, "result"    # Ljqi;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 146
    invoke-static {v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$000(Lcom/taobao/windmill/bundle/WMLActivity;)Ljpm;

    move-result-object v5

    const-string/jumbo v6, "FAIL_CANCELED"

    const-string/jumbo v7, ""

    .line 145
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    const-string/jumbo v5, "FAIL_CANCELED"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p1, Ljqi;->b:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v4, v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$102(Lcom/taobao/windmill/bundle/WMLActivity;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 155
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p1, Ljqi;->e:Ljrz;

    invoke-static {v4, v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$202(Lcom/taobao/windmill/bundle/WMLActivity;Ljrz;)Ljrz;

    .line 157
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 158
    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 160
    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 161
    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-boolean v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->licenseEnable:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 163
    .local v2, "needAuth":Z
    :goto_1
    const/4 v3, 0x0

    .line 165
    .local v3, "processor":Ljpk;
    if-eqz v2, :cond_1

    .line 166
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v4

    .line 1165
    iget-object v4, v4, Ljpo;->c:Ljpo$a;

    iget-object v0, v4, Ljpo$a;->l:Ljpp;

    .line 169
    .local v0, "adapter":Ljpp;
    if-eqz v0, :cond_1

    .line 170
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 171
    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->licenses:Ljava/lang/String;

    .line 170
    invoke-interface {v0, v4, v5}, Ljpp;->onLicenseLaunch(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-interface {v0}, Ljpp;->getValidator()Ljpk;

    move-result-object v3

    .line 182
    .end local v0    # "adapter":Ljpp;
    :cond_1
    move-object v1, v3

    .line 184
    .local v1, "finalProcessor":Ljpk;
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->access$200(Lcom/taobao/windmill/bundle/WMLActivity;)Ljrz;

    move-result-object v4

    new-instance v5, Lcom/taobao/windmill/bundle/WMLActivity$1$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/taobao/windmill/bundle/WMLActivity$1$1;-><init>(Lcom/taobao/windmill/bundle/WMLActivity$1;ZLjpk;)V

    .line 185
    invoke-interface {v4, v5}, Ljrz;->a(Ljpk;)V

    .line 216
    iget-boolean v4, p1, Ljqi;->a:Z

    if-nez v4, :cond_3

    .line 217
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->access$300(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v4

    invoke-interface {v4}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->hide()V

    .line 222
    :goto_2
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p1, Ljqi;->d:Ljqw;

    invoke-static {v4, v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$402(Lcom/taobao/windmill/bundle/WMLActivity;Ljqw;)Ljqw;

    .line 224
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p1, Ljqi;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    invoke-static {v4, v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$502(Lcom/taobao/windmill/bundle/WMLActivity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .line 226
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    new-instance v5, Ljqr;

    iget-object v6, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v7, p1, Ljqi;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    invoke-direct {v5, v6, v7}, Ljqr;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    invoke-static {v4, v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$602(Lcom/taobao/windmill/bundle/WMLActivity;Ljqr;)Ljqr;

    .line 228
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->access$600(Lcom/taobao/windmill/bundle/WMLActivity;)Ljqr;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v6}, Lcom/taobao/windmill/bundle/WMLActivity;->access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljqr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$800(Lcom/taobao/windmill/bundle/WMLActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$900(Lcom/taobao/windmill/bundle/WMLActivity;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v5, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 242
    invoke-static {v5}, Lcom/taobao/windmill/bundle/WMLActivity;->access$000(Lcom/taobao/windmill/bundle/WMLActivity;)Ljpm;

    move-result-object v5

    const-string/jumbo v6, "SUCCESS"

    const/4 v7, 0x0

    .line 241
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v1    # "finalProcessor":Ljpk;
    .end local v2    # "needAuth":Z
    .end local v3    # "processor":Ljpk;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 219
    .restart local v1    # "finalProcessor":Ljpk;
    .restart local v2    # "needAuth":Z
    .restart local v3    # "processor":Ljpk;
    :cond_3
    iget-object v4, p0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/WMLActivity;->access$300(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v4

    sget-object v5, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->CLOSE_BY_DEV:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    invoke-interface {v4, v5}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->setMode(Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;)V

    goto :goto_2
.end method
