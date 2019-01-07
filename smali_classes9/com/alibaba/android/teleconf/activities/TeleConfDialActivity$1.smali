.class final Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;
.super Ljava/lang/Object;
.source "TeleConfDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cancel a system call to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "code"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "bizcall_fixed_line_block_page_cencel_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->finish()V

    .line 185
    return-void
.end method
