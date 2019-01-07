.class final Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$1;
.super Ljava/lang/Object;
.source "LiveInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$1;->a:Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->e()V

    .line 69
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbws;->c(Z)V

    .line 70
    return-void
.end method
