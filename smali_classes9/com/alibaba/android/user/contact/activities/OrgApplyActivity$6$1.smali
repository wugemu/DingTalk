.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6$1;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Lfgp;

    move-result-object v0

    invoke-virtual {v0}, Lfgp;->notifyDataSetChanged()V

    .line 204
    return-void
.end method
