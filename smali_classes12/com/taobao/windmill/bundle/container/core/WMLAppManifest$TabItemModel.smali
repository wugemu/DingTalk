.class public Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;
.super Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
.source "WMLAppManifest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabItemModel"
.end annotation


# instance fields
.field public itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;


# direct methods
.method public constructor <init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "model"    # Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;-><init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object p4, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    .line 208
    return-void
.end method


# virtual methods
.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;->iconPath:Ljava/lang/String;

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;->text:Ljava/lang/String;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->itemModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;->selectedIconPath:Ljava/lang/String;

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
