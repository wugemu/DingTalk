.class final Lacs$7;
.super Ljava/lang/Object;
.source "MailNotificationManager.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacs;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacs;


# direct methods
.method constructor <init>(Lacs;)V
    .locals 0
    .param p1, "this$0"    # Lacs;

    .prologue
    .line 771
    iput-object p1, p0, Lacs$7;->a:Lacs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 4
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 774
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v2, p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 775
    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 777
    .local v1, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangeReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 778
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAllAddedMails()Ljava/util/List;

    move-result-object v0

    .line 780
    .local v0, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lacs$7;->a:Lacs;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lacs;->a(Lacs;Ljava/util/List;Ljava/lang/String;)V

    .line 783
    .end local v0    # "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :cond_0
    return-void
.end method
