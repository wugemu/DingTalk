.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;
.super Ljava/lang/Object;
.source "MyConnectionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

.field final synthetic c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Landroid/app/Activity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    invoke-interface {v1}, Lfmr;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Ljava/util/List;)Ljava/util/List;

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;J)Ljava/util/List;

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    invoke-interface {v1}, Lfmr;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Ljava/util/List;)Ljava/util/List;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->f(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {}, Lflr;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 390
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 398
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$2;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
