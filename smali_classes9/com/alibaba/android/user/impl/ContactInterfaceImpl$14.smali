.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->c(Landroid/app/Activity;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 5144
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5144
    check-cast p1, Ljava/lang/String;

    .line 6148
    const-string/jumbo v0, "bindToTaobao applyUccUserToken success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6149
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->b:Lcma;

    invoke-static {v0, p1, v1}, Lfrb;->a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 5144
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 5160
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bindToTaobao applyUccUserToken error and errorCode = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " errorMsg = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5161
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->b:Lcma;

    if-eqz v0, :cond_0

    .line 5162
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5164
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 5155
    return-void
.end method
