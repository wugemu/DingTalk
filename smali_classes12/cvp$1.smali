.class final Lcvp$1;
.super Ljava/lang/Object;
.source "GISViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcvp;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/MessageContent$GeoContent;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcvp;


# direct methods
.method constructor <init>(Lcvp;Lcom/alibaba/wukong/im/MessageContent$GeoContent;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcvp;

    .prologue
    .line 79
    iput-object p1, p0, Lcvp$1;->d:Lcvp;

    iput-object p2, p0, Lcvp$1;->a:Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    iput-object p3, p0, Lcvp$1;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p4, p0, Lcvp$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "location_latitude"

    iget-object v3, p0, Lcvp$1;->a:Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->latitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 84
    const-string/jumbo v2, "location_longitude"

    iget-object v3, p0, Lcvp$1;->a:Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->longitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 85
    const-string/jumbo v2, "location_text"

    iget-object v3, p0, Lcvp$1;->a:Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 86
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "message_id"

    iget-object v3, p0, Lcvp$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string/jumbo v3, "intent_key_menu_seed"

    iget-object v2, p0, Lcvp$1;->c:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Y()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 90
    .local v1, "selectMarker":Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;
    sget v2, Lctk$e;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 91
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 92
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 93
    const-string/jumbo v2, "location_select_marker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 94
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Lcvp$1;->d:Lcvp;

    iget-object v3, v3, Lcvp;->aa:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method
