.class final Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;
.super Ljava/lang/Object;
.source "FavoriteInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->b(Landroid/content/Context;)Lcma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->c:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    check-cast p1, Ljava/lang/Boolean;

    .line 1133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "favorite.add"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->favorite_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 1142
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "favorite.add"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->favorite_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 155
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "favorite.add"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->favorite_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    const-string/jumbo v0, "13023000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_file_not_exist:I

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string/jumbo v0, "2021"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->network_error:I

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_4
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 176
    return-void
.end method
