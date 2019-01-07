.class final Lbbp$24;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic b:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1306
    iput-object p1, p0, Lbbp$24;->b:Lbbp;

    iput-object p2, p0, Lbbp$24;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1309
    iget-object v0, p0, Lbbp$24;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$24;->a:Lcom/alibaba/wukong/sync/SyncAck;

    .line 5733
    iget-object v2, v0, Lbbo;->h:Lbbk;

    new-instance v3, Lbbo$67;

    invoke-direct {v3, v0, v1}, Lbbo$67;-><init>(Lbbo;Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 5930
    new-instance v1, Lbbk$4;

    invoke-direct {v1, v2, v3}, Lbbk$4;-><init>(Lbbk;Lcma;)V

    .line 5946
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSouceRemote] getDingUnreadCountObject"

    aput-object v4, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5947
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5948
    new-instance v3, Lbbk$5;

    invoke-direct {v3, v2, v1}, Lbbk$5;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->getDingUnreadCountModel(Liyv;)V

    .line 1310
    return-void
.end method
