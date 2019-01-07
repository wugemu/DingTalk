.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$14;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzk;

.field final synthetic b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lzk;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$14;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$14;->a:Lzk;

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
    .line 880
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$14;->a:Lzk;

    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mail_dynamic_key"

    invoke-interface {v0, v1, v2}, Lzk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 881
    return-void
.end method
