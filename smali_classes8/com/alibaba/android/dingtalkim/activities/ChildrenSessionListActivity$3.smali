.class final Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$3;
.super Ljava/lang/Object;
.source "ChildrenSessionListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 117
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    const-string/jumbo v2, "https://dingtalk.hecom.cn/dingtalk/introduction/index"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
