.class Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$1;
.super Ljava/lang/Object;
.source "AbsMailDisplayer.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->getObserver()Lxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 1
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

    .prologue
    .line 48
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v0, :cond_1

    .line 54
    .end local p2    # "dataGroup":Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local p2    # "dataGroup":Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    :cond_1
    instance-of v0, p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .end local p2    # "dataGroup":Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->handleMailGroup(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto :goto_0
.end method
