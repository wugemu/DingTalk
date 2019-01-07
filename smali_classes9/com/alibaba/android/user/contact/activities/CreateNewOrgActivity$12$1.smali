.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

.field final synthetic d:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->d:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;

    iput-wide p2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->a:J

    iput-object p4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->c:Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->d:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->d:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->a:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;->c:Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    .line 1125
    return-void
.end method
