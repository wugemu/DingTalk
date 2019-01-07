.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$4;
.super Ljava/lang/Object;
.source "CreateLiveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->finish()V

    .line 320
    :cond_0
    return-void
.end method
