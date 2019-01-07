.class final Lacg$39;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqq;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgqq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3042
    iput-object p1, p0, Lacg$39;->a:Lgqq;

    iput-object p2, p0, Lacg$39;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 3046
    iget-object v1, p0, Lacg$39;->a:Lgqq;

    if-nez v1, :cond_0

    .line 3159
    :goto_0
    return-void

    .line 3050
    :cond_0
    iget-object v1, p0, Lacg$39;->b:Ljava/lang/String;

    invoke-static {v1}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3051
    .local v0, "account":Ljava/lang/String;
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    new-instance v2, Lacg$39$1;

    invoke-direct {v2, p0, v0}, Lacg$39$1;-><init>(Lacg$39;Ljava/lang/String;)V

    .line 4076
    const-string/jumbo v3, "MailRPC"

    const-string/jumbo v4, "getDingTalkMailTicket"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    new-instance v3, Lro$1;

    invoke-direct {v3, v1, v2}, Lro$1;-><init>(Lro;Lcma;)V

    .line 4094
    iget-object v1, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->getMailTicketV2(Liyv;)V

    goto :goto_0
.end method
