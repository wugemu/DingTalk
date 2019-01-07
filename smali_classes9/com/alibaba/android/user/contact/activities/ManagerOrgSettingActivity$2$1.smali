.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;

    iput p2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 734
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;->a:I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;ILjava/lang/String;)V

    .line 735
    return-void
.end method
