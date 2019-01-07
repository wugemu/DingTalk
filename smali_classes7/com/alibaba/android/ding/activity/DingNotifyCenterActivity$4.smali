.class final Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$4;
.super Ljava/lang/Object;
.source "DingNotifyCenterActivity.java"

# interfaces
.implements Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$4;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$4;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)I

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$4;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)V

    .line 78
    return-void
.end method
