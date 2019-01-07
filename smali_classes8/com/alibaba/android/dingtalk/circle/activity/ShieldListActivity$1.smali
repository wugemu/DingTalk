.class final Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$1;
.super Ljava/lang/Object;
.source "ShieldListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 68
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 1
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)Lbqd;

    move-result-object v0

    invoke-interface {v0, p1}, Lbqd;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 73
    return-void
.end method
