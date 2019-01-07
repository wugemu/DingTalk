.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$14;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/CreateEventActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$14;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$14;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$14;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-interface {v0}, Lbac$a;->d()V

    .line 334
    :cond_0
    return-void
.end method
