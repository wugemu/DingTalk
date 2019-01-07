.class final Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;
.super Ljava/lang/Object;
.source "ExternalSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

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
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    :cond_0
    return-void
.end method
