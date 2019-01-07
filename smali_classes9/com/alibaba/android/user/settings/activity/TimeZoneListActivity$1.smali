.class final Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$1;
.super Ljava/lang/Object;
.source "TimeZoneListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "timeZoneId":Ljava/lang/String;
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lfwx;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->a(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->a(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;Ljava/lang/String;)V

    .line 71
    :cond_1
    return-void
.end method
