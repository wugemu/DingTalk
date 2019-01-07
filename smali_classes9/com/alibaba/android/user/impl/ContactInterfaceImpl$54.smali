.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2121
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;)V

    .line 2136
    .local v0, "requestHandler":Liyv;, "Liyv<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 2137
    .local v1, "userIService":Lcom/alibaba/android/user/idl/services/UserIService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2138
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    if-eqz v2, :cond_1

    .line 2139
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    :goto_0
    return-void

    .line 2143
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/UserIService;->applyNewDingtalkId(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
