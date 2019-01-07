.class final Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$2;
.super Ljava/lang/Object;
.source "EnterpriseOAListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 129
    return-void
.end method
