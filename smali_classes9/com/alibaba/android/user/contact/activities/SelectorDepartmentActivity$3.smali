.class final Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$3;
.super Ljava/lang/Object;
.source "SelectorDepartmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$3;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

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
    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$3;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->fullScroll(I)Z

    .line 316
    return-void
.end method
