.class Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;
.super Ljava/lang/Object;
.source "CommonEmailApiImpl.java"

# interfaces
.implements Luu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEml(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Luv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

.field final synthetic val$account:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->val$folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->val$uid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 646
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->val$folderName:Ljava/lang/String;

    invoke-static {v2, v3}, Lxa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;->val$uid:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->access$002(Z)Z

    .line 650
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    :cond_0
    return-void
.end method

.method public messageProgress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 668
    return-void
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 663
    return-void
.end method

.method public messagesFinished(Ljava/util/List;II)V
    .locals 0
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    return-void
.end method
