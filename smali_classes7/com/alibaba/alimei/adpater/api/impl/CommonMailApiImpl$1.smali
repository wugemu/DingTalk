.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;
.super Ljava/lang/Object;
.source "CommonMailApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->loadHistoryMails(JILjava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$folderId:J

.field final synthetic val$folderType:I

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;JILxv;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$accountName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$folderId:J

    iput p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$folderType:I

    iput-object p6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$listener:Lxv;

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
    .line 172
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v8

    .line 173
    .local v8, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$accountName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$folderId:J

    iget v6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$folderType:I

    iget-object v7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;->val$listener:Lxv;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->loadHistoryMails(JLjava/lang/String;JILxv;)V

    .line 174
    return-void
.end method
