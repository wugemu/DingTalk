.class final Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$5;
.super Ljava/lang/Object;
.source "CalendarWidgetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$5;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$5;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->finish()V

    .line 248
    return-void
.end method
