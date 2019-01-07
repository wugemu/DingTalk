.class final Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;
.super Lcq;
.source "MineGroupConversationActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;Lcn;)V
    .locals 4
    .param p2, "fm"    # Lcn;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    .line 167
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    sget v3, Lctk$i;->dt_conversation_group_create:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    sget v3, Lctk$i;->dt_conversation_group_join:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->b:[Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
