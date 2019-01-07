.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(JIILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;JII)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->e:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    iput-wide p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->b:J

    iput p5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->c:I

    iput p6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1939
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;)V

    .line 1954
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/util/List<Lcem;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1955
    .local v1, "contactIService":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1956
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    if-eqz v2, :cond_1

    .line 1957
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgConversations(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method
