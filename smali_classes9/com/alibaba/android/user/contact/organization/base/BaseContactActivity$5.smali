.class public final Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$5;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$5;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

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
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$5;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$5;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->d(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/widget/SearchView$OnQueryTextListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 242
    return-void
.end method
