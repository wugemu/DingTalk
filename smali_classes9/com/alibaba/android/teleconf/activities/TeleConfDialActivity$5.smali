.class final Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;
.super Ljava/lang/Object;
.source "TeleConfDialActivity.java"

# interfaces
.implements Lewl$c;


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
    .line 384
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 387
    if-nez p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v2, v3}, Leyv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Call number: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " in local contact"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "traceStr":Ljava/lang/String;
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
