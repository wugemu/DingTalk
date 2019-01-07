.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1837
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    const-string/jumbo v1, "if_enable_encrypt"

    const-string/jumbo v2, "Y"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_group_setting_thirdencrypt_cell_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1842
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;->a:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V

    .line 1843
    return-void
.end method
