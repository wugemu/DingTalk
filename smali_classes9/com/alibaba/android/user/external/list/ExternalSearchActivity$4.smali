.class final Lcom/alibaba/android/user/external/list/ExternalSearchActivity$4;
.super Ljava/lang/Object;
.source "ExternalSearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/external/list/ExternalListFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
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
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$4;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$4;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->d(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$4;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;Z)Z

    .line 139
    return-void
.end method
