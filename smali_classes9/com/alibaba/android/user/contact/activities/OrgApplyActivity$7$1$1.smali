.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_0
    return-void
.end method
