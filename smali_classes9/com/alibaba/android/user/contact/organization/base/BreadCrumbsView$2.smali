.class final Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$2;
.super Ljava/lang/Object;
.source "BreadCrumbsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$2;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

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
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$2;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->fullScroll(I)Z

    .line 134
    return-void
.end method
