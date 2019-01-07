.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;
.super Lcq;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Lcn;)V
    .locals 4
    .param p2, "fm"    # Lcn;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .line 485
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 481
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    sget v3, Leuj$l;->dt_conf_tab_call_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    sget v3, Leuj$l;->dt_conference_management_area:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->c:[Ljava/lang/String;

    .line 486
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 513
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->a:Landroid/support/v4/app/Fragment;

    .line 514
    invoke-super {p0, p1, p2, p3}, Lcq;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 515
    return-void
.end method
