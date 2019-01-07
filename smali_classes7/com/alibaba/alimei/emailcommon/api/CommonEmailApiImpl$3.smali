.class Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;
.super Ljava/lang/Object;
.source "CommonEmailApiImpl.java"

# interfaces
.implements Luu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchAttachment(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

.field final synthetic val$account:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$listener:Luv;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;Luv;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$listener:Luv;

    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p4, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$folder:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 1265
    return-void
.end method

.method public messageProgress(Ljava/lang/String;I)V
    .locals 7
    .param p1, "suid"    # Ljava/lang/String;
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$listener:Luv;

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$folder:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;->val$uid:J

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Luv;->fetchAttachmentProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JI)V

    .line 1260
    return-void
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 1255
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
    .line 1270
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    return-void
.end method
