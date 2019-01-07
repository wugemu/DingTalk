.class final Lddy$23;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(Ldnf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldnf;

.field final synthetic b:Lddy;


# direct methods
.method constructor <init>(Lddy;Ldnf;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 568
    iput-object p1, p0, Lddy$23;->b:Lddy;

    iput-object p2, p0, Lddy$23;->a:Ldnf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ldqq$c;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Ldqq$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 572
    iget-object v1, p0, Lddy$23;->a:Ldnf;

    if-eqz v1, :cond_2

    .line 573
    new-instance v0, Lddy$23$1;

    invoke-direct {v0, p0, p2, p1}, Lddy$23$1;-><init>(Lddy$23;Ldqq$c;Ljava/lang/Object;)V

    .line 581
    .local v0, "onLoadResultCallback":Ldnf$a;
    iget-object v1, p0, Lddy$23;->b:Lddy;

    .line 1066
    iget-object v1, v1, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 581
    if-eqz v1, :cond_0

    .line 582
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Ldnf$a;

    iget-object v3, p0, Lddy$23;->b:Lddy;

    .line 2066
    iget-object v3, v3, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 582
    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "onLoadResultCallback":Ldnf$a;
    check-cast v0, Ldnf$a;

    .line 585
    .restart local v0    # "onLoadResultCallback":Ldnf$a;
    :cond_0
    iget-object v1, p0, Lddy$23;->a:Ldnf;

    invoke-virtual {v1, p1, v0}, Ldnf;->a(Ljava/lang/Object;Ldnf$a;)V

    .line 592
    .end local v0    # "onLoadResultCallback":Ldnf$a;
    :cond_1
    :goto_0
    return-void

    .line 587
    :cond_2
    if-eqz p2, :cond_1

    .line 588
    invoke-virtual {p2, p1}, Ldqq$c;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
