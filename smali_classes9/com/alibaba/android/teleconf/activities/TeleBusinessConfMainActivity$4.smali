.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

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
    const/4 v4, 0x0

    .line 629
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    .line 632
    .local v0, "quotaInfo":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    .line 633
    iput-boolean v4, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    .line 634
    iput-boolean v4, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    .line 635
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;

    .line 637
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v0    # "quotaInfo":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 641
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Close quota warning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method
