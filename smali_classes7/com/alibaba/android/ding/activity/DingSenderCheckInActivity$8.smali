.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;->b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 582
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdu;

    .line 584
    .local v0, "model":Lbdu;
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;->b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iget-object v2, v0, Lbdu;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    .line 586
    .end local v0    # "model":Lbdu;
    :cond_0
    return-void
.end method
