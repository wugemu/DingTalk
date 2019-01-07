.class public final Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;
.super Ljava/lang/Object;
.source "WMLPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;-><init>(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/router/WMLPageModel$1;)V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 169
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;Z)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manifest"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    .param p3, "downgrade"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    if-eqz p2, :cond_2

    .line 173
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 174
    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->findPageByPageName(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    move-result-object v0

    .line 175
    .local v0, "model":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    if-eqz v0, :cond_2

    .line 177
    if-nez p3, :cond_0

    invoke-static {p1, v0}, Ljqz;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->h5Url:Ljava/lang/String;

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->H5:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    .line 180
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->h5Url:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-static {v1, v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->access$100(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;)V

    .line 184
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 187
    .end local v0    # "model":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
