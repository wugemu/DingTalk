.class Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$4;
.super Ljava/lang/Object;
.source "CommonEmailApiImpl.java"

# interfaces
.implements Luu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->downloadLargeMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$4;->this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

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
    .line 1437
    return-void
.end method

.method public messageProgress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 1432
    return-void
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 1427
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
    .line 1442
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    return-void
.end method
