.class public Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;
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
    name = "TabPageModel"
.end annotation


# instance fields
.field public tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

.field public tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;)V
    .locals 2
    .param p2, "model"    # Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;",
            ">;",
            "Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;>;"
    const/4 v1, 0x0

    .line 141
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEEX:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    invoke-direct {p0, v0, v1, v1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;-><init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    .line 143
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->url:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    .line 146
    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->backgroundColor:Ljava/lang/String;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "#fafafa"

    goto :goto_0
.end method

.method public getBorderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->borderStyle:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "#eeeeee"

    goto :goto_0
.end method

.method public getPostion()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "top"

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->TOP:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->BOTTOM:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    goto :goto_0
.end method

.method public getSelectedTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->selectedColor:Ljava/lang/String;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "#ff4400"

    goto :goto_0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabBarModel:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->color:Ljava/lang/String;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "#333333"

    goto :goto_0
.end method

.method public isPathInTabs(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    invoke-static {p1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    .line 191
    .local v0, "model":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;
    iget-object v3, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->pageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method
