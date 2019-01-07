.class public Lcom/alibaba/aliweex/adapter/component/WXTabbar;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXTabbar.java"

# interfaces
.implements Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Lcom/alibaba/aliweex/adapter/component/TabLayout;",
        ">;",
        "Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;"
    }
.end annotation


# static fields
.field public static final EVENT_TABSELECTED:Ljava/lang/String; = "tabselected"

.field public static final SELECT_INDEX:Ljava/lang/String; = "selectedIndex"

.field public static final TAB_ITEMS:Ljava/lang/String; = "tabItems"


# instance fields
.field private mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->mItems:Ljava/util/List;

    .line 51
    return-void
.end method

.method private getSelectedIndex()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "selectedIndex"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "index":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 122
    .end local v0    # "index":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "index":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "index":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private updateTabState(IZ)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;

    .line 151
    .local v2, "item":Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
    invoke-virtual {v2, p2}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->setSelectedState(Z)V

    .line 152
    if-nez p2, :cond_0

    .line 153
    iget-object v4, v2, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mBadge:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, v2, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mBadge:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    .line 158
    .local v3, "wxsdkInstance":Lcom/taobao/weex/WXSDKInstance;
    instance-of v4, v3, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    .line 160
    .local v1, "finder":Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v2}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;->getEmbed(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXEmbed;

    move-result-object v0

    .line 162
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXEmbed;
    if-eqz v0, :cond_1

    .line 163
    if-eqz p2, :cond_2

    const-string/jumbo v4, "visible"

    :goto_0
    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/component/WXEmbed;->setVisibility(Ljava/lang/String;)V

    .line 167
    .end local v0    # "comp":Lcom/taobao/weex/ui/component/WXEmbed;
    .end local v1    # "finder":Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
    :cond_1
    return-void

    .line 163
    .restart local v0    # "comp":Lcom/taobao/weex/ui/component/WXEmbed;
    .restart local v1    # "finder":Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
    :cond_2
    const-string/jumbo v4, "hidden"

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->initComponentHostView(Landroid/content/Context;)Lcom/alibaba/aliweex/adapter/component/TabLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/alibaba/aliweex/adapter/component/TabLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/TabLayout;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;-><init>(Landroid/content/Context;Lcom/alibaba/aliweex/adapter/component/WXTabbar;)V

    .line 56
    .local v0, "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    invoke-virtual {v0, p0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->setOnTabSelectedListener(Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;)V

    .line 57
    return-object v0
.end method

.method protected onFinishLayout()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onFinishLayout()V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/TabLayout;

    .line 77
    .local v0, "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->updateSize()V

    .line 80
    :cond_0
    return-void
.end method

.method public onTabReselected(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    .prologue
    .line 193
    return-void
.end method

.method public onTabSelected(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V
    .locals 6
    .param p1, "tab"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->updateTabState(IZ)V

    .line 174
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 175
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "index"

    invoke-virtual {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v3, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v1, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v0, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "selectedIndex"

    invoke-virtual {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v3, "attrs"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getRef()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tabselected"

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public onTabUnselected(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->updateTabState(IZ)V

    .line 189
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "selectedIndex"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/TabLayout;

    .line 66
    .local v0, "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->getTabAt(I)Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    move-result-object v1

    .line 68
    .local v1, "tab":Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->select()V

    goto :goto_0
.end method

.method public setTabItems(Ljava/lang/String;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "tabItems"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 129
    :try_start_0
    invoke-static {p1}, Lcoo;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 130
    .local v4, "items":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/TabLayout;

    .line 131
    .local v0, "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->removeAllTabs()V

    .line 132
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 133
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 147
    .end local v0    # "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    .end local v4    # "items":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v0    # "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    .restart local v4    # "items":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getSelectedIndex()I

    move-result v6

    .line 138
    .local v6, "selected":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .local v5, "len":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 139
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->create(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;

    move-result-object v3

    .line 140
    .local v3, "item":Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->setSelectedState(Z)V

    .line 141
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->mItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->newTab()Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v3}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    move-result-object v9

    if-ne v2, v6, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v0, v9, v7}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->addTab(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v7, v8

    .line 142
    goto :goto_2

    .line 144
    .end local v0    # "bar":Lcom/alibaba/aliweex/adapter/component/TabLayout;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
    .end local v4    # "items":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "len":I
    .end local v6    # "selected":I
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->updateProperties(Ljava/util/Map;)V

    .line 198
    return-void
.end method
