.class final Lcom/alibaba/alimei/framework/AlimeiService$a;
.super Ljava/lang/Object;
.source "AlimeiService.java"

# interfaces
.implements Lyt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/AlimeiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/framework/AlimeiService;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    .line 480
    return-void
.end method


# virtual methods
.method public final a(Lyq;)V
    .locals 3
    .param p1, "task"    # Lyq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$400(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V

    .line 489
    instance-of v0, p1, Lyr;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    check-cast p1, Lyr;

    .end local p1    # "task":Lyq;
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$500(Lcom/alibaba/alimei/framework/AlimeiService;ILjava/lang/String;Lyr;)V

    .line 492
    :cond_0
    return-void
.end method

.method public final b(Lyq;)V
    .locals 3
    .param p1, "task"    # Lyq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$400(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V

    .line 496
    instance-of v0, p1, Lyr;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    check-cast p1, Lyr;

    .end local p1    # "task":Lyq;
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$500(Lcom/alibaba/alimei/framework/AlimeiService;ILjava/lang/String;Lyr;)V

    .line 499
    :cond_0
    return-void
.end method

.method public final c(Lyq;)V
    .locals 3
    .param p1, "task"    # Lyq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 502
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$400(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V

    .line 503
    instance-of v0, p1, Lyr;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->b:Lcom/alibaba/alimei/framework/AlimeiService;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService$a;->a:Ljava/lang/String;

    check-cast p1, Lyr;

    .end local p1    # "task":Lyq;
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$500(Lcom/alibaba/alimei/framework/AlimeiService;ILjava/lang/String;Lyr;)V

    .line 506
    :cond_0
    return-void
.end method
