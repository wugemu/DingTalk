.class public final Lgon$23;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 300
    iput-object p1, p0, Lgon$23;->b:Lgon;

    iput-object p2, p0, Lgon$23;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 303
    new-instance v1, Lgon$23$1;

    invoke-direct {v1, p0}, Lgon$23$1;-><init>(Lgon$23;)V

    .line 322
    .local v1, "callback":Lcmi;, "Lcmi<Lcef;>;"
    const-class v2, Lcom/alibaba/dingtalk/cspace/idl/service/AlimeiTicketService;

    .line 323
    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/AlimeiTicketService;

    .line 324
    .local v0, "alimeiTicketService":Lcom/alibaba/dingtalk/cspace/idl/service/AlimeiTicketService;
    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/AlimeiTicketService;->getUserTicket(Liyv;)V

    .line 325
    return-void
.end method
