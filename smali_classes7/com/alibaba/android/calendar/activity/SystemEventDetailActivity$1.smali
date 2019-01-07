.class final Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$1;
.super Ljava/lang/Object;
.source "SystemEventDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$1;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$1;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;Landroid/view/View;)V

    .line 119
    return-void
.end method
