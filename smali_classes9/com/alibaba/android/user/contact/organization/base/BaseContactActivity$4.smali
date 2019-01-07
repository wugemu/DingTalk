.class final Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$4;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

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
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/widget/SearchView;

    move-result-object v0

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 145
    :cond_0
    return-void
.end method
