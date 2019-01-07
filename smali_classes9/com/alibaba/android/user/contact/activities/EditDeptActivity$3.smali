.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 558
    .line 1561
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    sget v1, Lezg$l;->org_enterprise_group_created:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(I)V

    .line 1562
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setRightArrow(I)V

    .line 1563
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->d:Lfpb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lfpb;->a:Ljava/lang/Boolean;

    .line 1564
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->d:Lfpb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lfpb;->b:Ljava/lang/Boolean;

    .line 1565
    sget v0, Lezg$l;->create_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 558
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 571
    return-void
.end method
