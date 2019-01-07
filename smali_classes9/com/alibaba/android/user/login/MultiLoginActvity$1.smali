.class final Lcom/alibaba/android/user/login/MultiLoginActvity$1;
.super Ljava/lang/Object;
.source "MultiLoginActvity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/MultiLoginActvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/MultiLoginActvity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/MultiLoginActvity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/MultiLoginActvity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/user/login/MultiLoginActvity$1;->a:Lcom/alibaba/android/user/login/MultiLoginActvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget v0, p1, Lcjo$b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity$1;->a:Lcom/alibaba/android/user/login/MultiLoginActvity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/MultiLoginActvity;->a(Lcom/alibaba/android/user/login/MultiLoginActvity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/MultiLoginActvity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/MultiLoginActvity$1$1;-><init>(Lcom/alibaba/android/user/login/MultiLoginActvity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
