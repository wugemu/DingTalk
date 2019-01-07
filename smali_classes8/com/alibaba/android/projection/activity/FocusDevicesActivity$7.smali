.class final Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;
.super Ljava/lang/Object;
.source "FocusDevicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 238
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    .line 239
    .local v0, "fd":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    if-eqz v0, :cond_0

    .line 242
    iget-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgNamePinyin:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgNameInitial:Ljava/lang/String;

    .line 246
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v2, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iget-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 248
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v4, v4, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickPinyin:Ljava/lang/String;

    .line 249
    iget-object v2, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    iget-object v4, v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v4, v4, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickInitial:Ljava/lang/String;

    goto :goto_0

    .line 252
    .end local v0    # "fd":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method
