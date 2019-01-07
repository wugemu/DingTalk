.class final Lcom/alibaba/android/user/login/MultiLoginActvity$1$1;
.super Ljava/lang/Object;
.source "MultiLoginActvity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/MultiLoginActvity$1;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/MultiLoginActvity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/MultiLoginActvity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/MultiLoginActvity$1;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/login/MultiLoginActvity$1$1;->a:Lcom/alibaba/android/user/login/MultiLoginActvity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity$1$1;->a:Lcom/alibaba/android/user/login/MultiLoginActvity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/MultiLoginActvity$1;->a:Lcom/alibaba/android/user/login/MultiLoginActvity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/MultiLoginActvity;->finish()V

    .line 51
    return-void
.end method
