.class final Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;
.super Ljava/lang/Object;
.source "SearchOrgNameCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

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
    .line 307
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 1031
    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->h:Ljava/lang/String;

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 2031
    iget-object v1, v1, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->h:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
