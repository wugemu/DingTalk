.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$7$3;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/CreateEventActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7$3;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1204
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbhg;->a(I)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7$3;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lbac$a;->b(Z)V

    .line 1206
    return-void
.end method
