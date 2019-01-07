.class final Lftm$1;
.super Ljava/lang/Object;
.source "NameCardEditStyleViewHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfth;

.field final synthetic b:Lfso;

.field final synthetic c:Lftm;


# direct methods
.method constructor <init>(Lftm;Lfth;Lfso;)V
    .locals 0
    .param p1, "this$0"    # Lftm;

    .prologue
    .line 47
    iput-object p1, p0, Lftm$1;->c:Lftm;

    iput-object p2, p0, Lftm$1;->a:Lfth;

    iput-object p3, p0, Lftm$1;->b:Lfso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lftm$1;->a:Lfth;

    .line 1050
    iget v1, v1, Lfth;->a:I

    .line 51
    if-eq v1, p3, :cond_0

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lftm$1;->a:Lfth;

    invoke-virtual {v1, p3}, Lfth;->a(I)Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v0

    .line 58
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    if-eqz v0, :cond_3

    .line 60
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->btnEURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 61
    iget-object v1, p0, Lftm$1;->c:Lftm;

    invoke-static {v1}, Lftm;->a(Lftm;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lftm$1;->c:Lftm;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2}, Lftm;->a(Lftm;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 64
    :cond_2
    iget-object v1, p0, Lftm$1;->c:Lftm;

    invoke-static {v1}, Lftm;->a(Lftm;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->btnEURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lftm$1;->c:Lftm;

    .line 2026
    iget-object v2, v2, Lfsd;->a:Landroid/view/View;

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lftm$1;->c:Lftm;

    invoke-static {v3}, Lftm;->a(Lftm;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 74
    :cond_3
    :goto_1
    iget-object v1, p0, Lftm$1;->a:Lfth;

    .line 2046
    iput p3, v1, Lfth;->a:I

    goto :goto_0

    .line 68
    :cond_4
    iget-object v1, p0, Lftm$1;->b:Lfso;

    iget-object v1, v1, Lfso;->b:Lftb$e;

    if-eqz v1, :cond_3

    .line 69
    iget-object v1, p0, Lftm$1;->b:Lfso;

    iget-object v1, v1, Lfso;->b:Lftb$e;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lftb$e;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
