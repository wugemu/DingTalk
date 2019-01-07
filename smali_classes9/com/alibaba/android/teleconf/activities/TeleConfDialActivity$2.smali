.class final Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;
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
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "code"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "bizcall_fixed_line_block_page_switch_voip_call_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->finish()V

    .line 196
    return-void
.end method
