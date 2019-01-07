.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1474
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "org_id="

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_exit"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1477
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)J

    move-result-wide v2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const-string/jumbo v6, "EVENTBUTLER"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27$1;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;)V

    const-class v8, Lcma;

    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-interface {v6, v7, v8, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-interface/range {v1 .. v6}, Lezt;->a(JILjava/lang/String;Lcma;)V

    .line 1499
    return-void
.end method
