.class final Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$2;
.super Ljava/lang/Object;
.source "DisbandOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$2;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$2;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    return-void
.end method
