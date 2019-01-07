.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Lhrw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhrv;)V
    .locals 5
    .param p1, "item"    # Lhrv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrv;

    .line 1100
    .local v0, "model":Lhrv;
    if-ne v0, p1, :cond_0

    .line 1101
    const/4 v2, 0x1

    iput-boolean v2, v0, Lhrv;->i:Z

    goto :goto_0

    .line 1103
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lhrv;->i:Z

    goto :goto_0

    .line 1107
    .end local v0    # "model":Lhrv;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->l(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->l(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 1112
    :cond_2
    if-eqz p1, :cond_3

    .line 1113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->m(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1114
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->m(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    move-result-object v1

    .line 2021
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    .line 2022
    iget-object v3, p1, Lhrv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lhrv;->b:Ljava/lang/String;

    .line 2023
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setUrl(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lhrv;->d:Ljava/lang/String;

    .line 2024
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setMediaId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lhrv;->f:Ljava/lang/String;

    .line 2025
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-boolean v4, p1, Lhrv;->i:Z

    .line 2026
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setChecked(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-boolean v4, p1, Lhrv;->h:Z

    .line 2027
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadgeJustRedDot(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lhrv;->c:Ljava/lang/String;

    .line 2028
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setIconId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lhrv;->e:Ljava/lang/String;

    .line 2029
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setIconName(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lhrv;->g:Ljava/lang/String;

    .line 2030
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadge(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 1114
    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onDropListItemClick(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V

    .line 1117
    :cond_3
    return-void
.end method
