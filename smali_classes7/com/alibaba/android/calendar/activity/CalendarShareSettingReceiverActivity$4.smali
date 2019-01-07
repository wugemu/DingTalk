.class final Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;->b:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    iput-object p2, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;->b:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lapl$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lapl$a;->a(Ljava/util/List;Z)V

    .line 137
    return-void
.end method
