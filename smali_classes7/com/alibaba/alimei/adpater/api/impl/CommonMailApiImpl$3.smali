.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;
.super Ljava/lang/Object;
.source "CommonMailApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->loadMultipleHistoryMails([J[I[Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$folderIds:[J

.field final synthetic val$folderTypes:[I

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;[J[ILxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$folderIds:[J

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$folderTypes:[I

    iput-object p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 260
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v8

    .line 261
    .local v8, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$folderIds:[J

    aget-wide v4, v4, v7

    iget-object v6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$folderTypes:[I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;->val$listener:Lxv;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->loadHistoryMails(JLjava/lang/String;JILxv;)V

    .line 262
    return-void
.end method
