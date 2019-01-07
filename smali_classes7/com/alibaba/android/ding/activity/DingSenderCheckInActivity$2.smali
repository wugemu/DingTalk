.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DingSenderCheckInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 323
    if-nez p2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string/jumbo v4, "com.workapp.ding.meeting.extension.changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    const-string/jumbo v4, "intent_key_meeting_extension_changed"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 328
    .local v2, "object":Ljava/io/Serializable;
    instance-of v4, v2, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 331
    check-cast v1, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;

    .line 332
    .local v1, "meetingExtensionChangedObject":Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->getDingId()J

    move-result-wide v8

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_0

    .line 335
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->getSceneType()I

    move-result v3

    .line 336
    .local v3, "sceneType":I
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->getExtension()Ljava/util/Map;

    move-result-object v0

    .line 337
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    .line 341
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ToggleButton;

    move-result-object v7

    const-string/jumbo v4, "refreshQRCodeInterval"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1150
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 341
    if-lez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 342
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v4, v6}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;I)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 341
    goto :goto_1

    .line 343
    :cond_3
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->l(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ToggleButton;

    move-result-object v7

    const-string/jumbo v4, "checkInEnable"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2150
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 344
    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto :goto_2
.end method
