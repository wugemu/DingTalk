.class final Laun$32$1;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laun$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun$32;


# direct methods
.method constructor <init>(Laun$32;)V
    .locals 0
    .param p1, "this$1"    # Laun$32;

    .prologue
    .line 218
    iput-object p1, p0, Laun$32$1;->a:Laun$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Laun$32$1;->a:Laun$32;

    iget-object v0, v0, Laun$32;->a:Laun;

    .line 1077
    iget-object v0, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 221
    if-eqz v0, :cond_0

    iget-object v0, p0, Laun$32$1;->a:Laun$32;

    iget-object v0, v0, Laun$32;->a:Laun;

    .line 2077
    iget-object v0, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 221
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Laun$32$1;->a:Laun$32;

    iget-object v0, v0, Laun$32;->a:Laun;

    .line 3077
    iget-object v0, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 222
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 223
    iget-object v0, p0, Laun$32$1;->a:Laun$32;

    iget-object v0, v0, Laun$32;->a:Laun;

    const/4 v1, 0x0

    .line 4077
    iput-object v1, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 226
    :cond_0
    const-string/jumbo v0, "pref_key_calendar_recycle_and_focus_hint"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method
