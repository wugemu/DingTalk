.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;->onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "hasWrite":Z
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 222
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v1, :cond_0

    .line 223
    invoke-static {v0}, Lacg;->b(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v1

    goto :goto_0

    .line 226
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_1
    return-void
.end method
