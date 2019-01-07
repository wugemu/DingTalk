.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILcma;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcma;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:I

.field final synthetic i:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/util/List;Ljava/util/List;Lcma;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->i:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    iput-object p5, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->e:Lcom/alibaba/wukong/im/Conversation;

    iput-object p7, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->g:Ljava/util/List;

    iput p9, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1528
    .line 2531
    new-instance v2, Labi;

    invoke-direct {v2}, Labi;-><init>()V

    .line 2532
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->a:Ljava/util/List;

    iput-object v0, v2, Labi;->b:Ljava/util/List;

    .line 2534
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2537
    new-instance v4, Labj;

    invoke-direct {v4}, Labj;-><init>()V

    .line 2538
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Labj;->b:Ljava/lang/Long;

    .line 2539
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Labj;->a:Ljava/lang/Long;

    .line 2541
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2544
    :cond_0
    iput-object v1, v2, Labi;->a:Ljava/util/List;

    .line 2548
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;)V

    .line 2596
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->d:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2597
    const-class v3, Lcma;

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2600
    :goto_1
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lro;->a(Labi;Lcma;)V

    .line 1528
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1609
    const-string/jumbo v0, "forwardMessagesByMail"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1605
    return-void
.end method
