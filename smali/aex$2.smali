.class public final Laex$2;
.super Ljava/lang/Object;
.source "MailBizHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Labw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field final synthetic d:Z


# direct methods
.method public constructor <init>(Lcma;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Laex$2;->a:Lcma;

    iput-object p2, p0, Laex$2;->b:Ljava/lang/String;

    iput-object p3, p0, Laex$2;->c:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-boolean p4, p0, Laex$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 132
    check-cast p1, Labw;

    .line 1135
    if-nez p1, :cond_1

    .line 1136
    const-string/jumbo v0, "forwardMailByCid createConversationEmails"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "address not exist"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Laex$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Laex$2;->a:Lcma;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid Parameters address not exist"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Laex$2;->b:Ljava/lang/String;

    iget-object v1, p0, Laex$2;->c:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, p1, Labw;->b:Ljava/lang/String;

    iget-boolean v3, p0, Laex$2;->d:Z

    iget-object v4, p0, Laex$2;->a:Lcma;

    invoke-static {v0, v1, v2, v3, v4}, Laex;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string/jumbo v0, "forwardMailByCid createConversationEmails"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Laex$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Laex$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 148
    return-void
.end method
