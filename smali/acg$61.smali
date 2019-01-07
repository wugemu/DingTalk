.class final Lacg$61;
.super Lcmi;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:I

.field final synthetic e:Lcma;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V
    .locals 0

    .prologue
    .line 4194
    iput-object p1, p0, Lacg$61;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$61;->b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iput-object p3, p0, Lacg$61;->c:Lcom/alibaba/wukong/im/Conversation;

    iput p4, p0, Lacg$61;->d:I

    iput-object p5, p0, Lacg$61;->e:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4209
    const-string/jumbo v0, "navToMailDetail, getMailMessageReceiverMail"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4210
    iget-object v0, p0, Lacg$61;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$61;->b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$61;->c:Lcom/alibaba/wukong/im/Conversation;

    const/4 v3, 0x0

    iget v4, p0, Lacg$61;->d:I

    iget-object v5, p0, Lacg$61;->e:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    .line 4211
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 4194
    check-cast p1, Ljava/lang/String;

    .line 5198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5199
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lafh;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v3, v0

    .line 5204
    :cond_1
    :goto_0
    iget-object v0, p0, Lacg$61;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$61;->b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$61;->c:Lcom/alibaba/wukong/im/Conversation;

    iget v4, p0, Lacg$61;->d:I

    iget-object v5, p0, Lacg$61;->e:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    .line 4194
    return-void

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method
