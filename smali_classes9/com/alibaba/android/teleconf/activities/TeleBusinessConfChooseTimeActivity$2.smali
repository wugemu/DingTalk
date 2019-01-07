.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;
.super Ljava/lang/Object;
.source "TeleBusinessConfChooseTimeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->finish()V

    .line 184
    return-void
.end method
