.class final Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;
.super Ljava/lang/Object;
.source "SelectorCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lfuw;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 159
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    new-instance v6, Lfuw;

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)I

    move-result v7

    invoke-direct {v6, v0, v7}, Lfuw;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lfuw;->a()Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 164
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "isHasSelcted":Z
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 168
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->d(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 169
    const/4 v2, 0x1

    .line 172
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 173
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 175
    .local v4, "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    const-string/jumbo v5, "\u4e2d\u56fd"

    iget-object v6, v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 177
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 182
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->d(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    const/4 v2, 0x0

    .line 184
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Z)Z

    .line 185
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5, v4}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 189
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    if-nez v2, :cond_1

    .line 194
    .end local v4    # "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 207
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "isHasSelcted":Z
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;>;"
    :cond_5
    :goto_2
    return-void

    .line 161
    .restart local v0    # "context":Landroid/content/Context;
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 204
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "isHasSelcted":Z
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;>;"
    .restart local v4    # "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
