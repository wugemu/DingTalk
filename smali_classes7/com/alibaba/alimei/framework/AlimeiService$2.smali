.class final Lcom/alibaba/alimei/framework/AlimeiService$2;
.super Ljava/lang/Object;
.source "AlimeiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/framework/AlimeiService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxw;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/alibaba/alimei/framework/AlimeiService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/framework/AlimeiService;Lxw;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->d:Lcom/alibaba/alimei/framework/AlimeiService;

    iput-object p2, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->a:Lxw;

    iput-object p3, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->a:Lxw;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->d:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/AlimeiService;->getApplicationContext()Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService$2;->c:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lxw;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 309
    return-void
.end method
