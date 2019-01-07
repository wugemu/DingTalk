.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;->c:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    iput-wide p2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;->a:J

    iput-object p4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 347
    const-string/jumbo v0, "org_name"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    return-object p1
.end method
