.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$12;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$12;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

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
    .line 620
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$12;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->q(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->fullScroll(I)Z

    .line 621
    return-void
.end method