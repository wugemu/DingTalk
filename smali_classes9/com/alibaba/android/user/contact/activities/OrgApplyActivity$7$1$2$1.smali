.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->h(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Lfgp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Lfgp;

    move-result-object v0

    invoke-virtual {v0}, Lfgp;->notifyDataSetChanged()V

    .line 265
    :cond_0
    return-void
.end method
