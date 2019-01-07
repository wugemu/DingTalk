.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;

    .prologue
    .line 5043
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;

    iput-boolean p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9$1;->a:Z

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
    .line 5046
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;->a:Lcma;

    iget-boolean v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9$1;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 5047
    return-void
.end method
