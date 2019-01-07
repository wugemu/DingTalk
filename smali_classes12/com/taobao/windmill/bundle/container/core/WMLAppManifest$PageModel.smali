.class public Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
.super Ljava/lang/Object;
.source "WMLAppManifest.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageModel"
.end annotation


# instance fields
.field public downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;

.field public h5Url:Ljava/lang/String;

.field public pageName:Ljava/lang/String;

.field public type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

.field public url:Ljava/lang/String;

.field public window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;


# direct methods
.method public constructor <init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEEX:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    .line 111
    iput-object p2, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->pageName:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    .line 114
    return-void
.end method


# virtual methods
.method public clone()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .local v1, "newPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    :goto_0
    return-object v1

    .line 126
    .end local v1    # "newPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v2, "[RapManifest]"

    const-string/jumbo v3, "PageModel clone not supported"

    invoke-static {v2, v3, v0}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    new-instance v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->pageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;-><init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "newPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->clone()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    move-result-object v0

    return-object v0
.end method

.method public setDowngrade(Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "downgradeModel"    # Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;

    .line 118
    iput-object p2, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->h5Url:Ljava/lang/String;

    .line 119
    return-void
.end method
