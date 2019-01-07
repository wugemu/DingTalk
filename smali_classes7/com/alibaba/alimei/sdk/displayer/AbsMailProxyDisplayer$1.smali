.class Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer$1;
.super Ljava/lang/Object;
.source "AbsMailProxyDisplayer.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v3, p2, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    if-nez v3, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 54
    check-cast v0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    .line 55
    .local v0, "groupModel":Lcom/alibaba/alimei/sdk/model/SettingGroupModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->getMailShownType()I

    move-result v1

    .line 56
    .local v1, "mailShownType":I
    if-ltz v1, :cond_0

    .line 60
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v2

    .line 1185
    .local v2, "sdkConfig":Lafy;
    iput v1, v2, Lafy;->o:I

    .line 62
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-static {v3, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;I)V

    goto :goto_0
.end method
