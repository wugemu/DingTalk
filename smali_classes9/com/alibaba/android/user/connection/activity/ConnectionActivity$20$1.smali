.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20$1;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;->a(Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20$1;->b:Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;

    iput p2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20$1;->b:Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20$1;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 570
    return-void
.end method
