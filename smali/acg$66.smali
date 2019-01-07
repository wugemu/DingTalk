.class final Lacg$66;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic e:I

.field final synthetic f:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V
    .locals 0

    .prologue
    .line 4424
    iput-object p1, p0, Lacg$66;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$66;->b:Landroid/content/Context;

    iput-object p3, p0, Lacg$66;->c:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iput-object p4, p0, Lacg$66;->d:Lcom/alibaba/wukong/im/Conversation;

    iput p5, p0, Lacg$66;->e:I

    iput-object p6, p0, Lacg$66;->f:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4441
    const-string/jumbo v0, "MailNavigator"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "not found account by email "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacg$66;->a:Ljava/lang/String;

    invoke-static {v3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    iget-object v0, p0, Lacg$66;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$66;->c:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$66;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lacg$66;->a:Ljava/lang/String;

    iget v4, p0, Lacg$66;->e:I

    iget-object v5, p0, Lacg$66;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    .line 4444
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4424
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 5427
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5428
    const-string/jumbo v0, "MailNavigator"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "found account "

    aput-object v2, v1, v4

    invoke-static {v3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, " by email "

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v4, p0, Lacg$66;->a:Ljava/lang/String;

    invoke-static {v4}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5430
    iget-object v0, p0, Lacg$66;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$66;->c:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$66;->d:Lcom/alibaba/wukong/im/Conversation;

    iget v4, p0, Lacg$66;->e:I

    iget-object v5, p0, Lacg$66;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    :goto_0
    return-void

    .line 5432
    :cond_0
    const-string/jumbo v0, "MailNavigator"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "not found account by email "

    aput-object v2, v1, v4

    iget-object v2, p0, Lacg$66;->a:Ljava/lang/String;

    invoke-static {v2}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5434
    iget-object v0, p0, Lacg$66;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$66;->c:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$66;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lacg$66;->a:Ljava/lang/String;

    iget v4, p0, Lacg$66;->e:I

    iget-object v5, p0, Lacg$66;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method
