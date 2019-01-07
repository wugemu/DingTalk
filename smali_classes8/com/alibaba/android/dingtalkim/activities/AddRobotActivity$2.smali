.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$2;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "weatherAlarmEvent"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void

    .line 215
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
