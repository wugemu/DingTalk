.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$8;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/ReceiverSelector$a;


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
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$8;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$8;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$8;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-interface {v0}, Lbac$a;->w()V

    .line 250
    :cond_0
    return-void
.end method
