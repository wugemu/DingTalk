.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

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
    .line 859
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v0

    .line 861
    .local v0, "userAvatar":Lezd;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V

    .line 863
    .end local v0    # "userAvatar":Lezd;
    :cond_0
    return-void
.end method
