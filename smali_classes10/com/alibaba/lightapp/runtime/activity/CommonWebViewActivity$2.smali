.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;
.source "CommonWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final config(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 1
    .param p1, "tabConfiguration"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    .line 1723
    return-void
.end method

.method public final init(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 1
    .param p1, "tabConfiguration"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    .line 1713
    return-void
.end method

.method public final select(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    return-void
.end method

.method public final start(Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isPopParent"    # Z
    .param p3, "tabAnimInfo"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V

    .line 1718
    return-void
.end method
