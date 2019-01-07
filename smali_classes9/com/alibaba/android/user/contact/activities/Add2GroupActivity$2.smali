.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;Ljava/lang/String;)V

    .line 144
    .local v0, "searchTaskListener":Lcca;
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v2, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->c(IILjava/lang/String;Lcca;)V

    .line 148
    .end local v0    # "searchTaskListener":Lcca;
    :goto_0
    return v2

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V

    goto :goto_0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method
