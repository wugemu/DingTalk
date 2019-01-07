.class final Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$2;
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
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 111
    return-void
.end method
