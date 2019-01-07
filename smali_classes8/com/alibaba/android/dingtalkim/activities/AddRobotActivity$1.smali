.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$1;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lctl;

    move-result-object v0

    invoke-virtual {v0}, Lctl;->a()V

    .line 170
    return-void
.end method
