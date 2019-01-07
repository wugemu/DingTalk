.class final Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;
.super Ljava/lang/Object;
.source "ViewPagerContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 170
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 121
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 6
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v1, "event":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 132
    const-string/jumbo v5, "selectedId"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(I)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v3

    .line 139
    .local v3, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v3, :cond_3

    .line 141
    :try_start_1
    const-string/jumbo v4, "isSelected"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_2
    const-string/jumbo v4, "tab"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 147
    :cond_3
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v4, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;I)I

    .line 148
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(I)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v2

    .line 149
    .local v2, "layout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v2, :cond_0

    .line 151
    :try_start_2
    const-string/jumbo v4, "isSelected"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    :goto_3
    const-string/jumbo v4, "tab"

    invoke-virtual {v2, v4, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 134
    .end local v2    # "layout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .end local v3    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 152
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "layout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :catch_2
    move-exception v0

    .line 153
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method
