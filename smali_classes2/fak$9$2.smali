.class final Lfak$9$2;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Loo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfak$9;


# direct methods
.method constructor <init>(Lfak$9;)V
    .locals 0
    .param p1, "this$1"    # Lfak$9;

    .prologue
    .line 655
    iput-object p1, p0, Lfak$9$2;->a:Lfak$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lor;
    .locals 1

    .prologue
    .line 659
    new-instance v0, Lfak$9$2$1;

    invoke-direct {v0, p0}, Lfak$9$2$1;-><init>(Lfak$9$2;)V

    return-object v0
.end method

.method public final a(Lor;)V
    .locals 4
    .param p1, "listener"    # Lor;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 704
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 705
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    iget-object v1, p0, Lfak$9$2;->a:Lfak$9;

    iget-wide v2, v1, Lfak$9;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lfak$9$2;->a:Lfak$9;

    iget-wide v2, v2, Lfak$9;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lfak$9$2;->a:Lfak$9;

    iget-boolean v3, v3, Lfak$9;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/alibaba/android/user/idl/services/ContactIService;->getUserEmployeeInfo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    .line 706
    return-void
.end method

.method public final b()Lcma;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lfak$9$2;->a:Lfak$9;

    iget-object v0, v0, Lfak$9;->c:Lcma;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 697
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lfak$9$2;->a:Lfak$9;

    iget-wide v4, v3, Lfak$9;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lfak$9$2;->a:Lfak$9;

    iget-wide v4, v3, Lfak$9;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method
