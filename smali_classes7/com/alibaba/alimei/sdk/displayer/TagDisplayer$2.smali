.class Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;
.super Ljava/lang/Object;
.source "TagDisplayer.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->initTagObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 6
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v1, p2, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 151
    check-cast v0, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    .line 152
    .local v0, "tagGroup":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v1, :cond_1

    .line 160
    .end local v0    # "tagGroup":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v0    # "tagGroup":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getAccountId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;Z)V

    goto :goto_0
.end method
