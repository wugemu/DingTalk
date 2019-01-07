.class final Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;
.super Ljava/lang/Object;
.source "TeleConfRetryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)I

    move-result v3

    if-nez v3, :cond_0

    .line 237
    const-string/jumbo v2, "pstn"

    .line 242
    .local v2, "type":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 243
    const-string/jumbo v1, "line"

    .line 247
    .local v1, "status":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v0, "property":Ljava/util/Map;
    const-string/jumbo v3, "type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "tele_redial_button_click"

    invoke-interface {v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    .line 252
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->finish()V

    .line 253
    return-void

    .line 239
    .end local v0    # "property":Ljava/util/Map;
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "voip"

    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0

    .line 245
    :cond_1
    const-string/jumbo v1, "net"

    .restart local v1    # "status":Ljava/lang/String;
    goto :goto_1
.end method
