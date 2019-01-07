.class final Lacg$67;
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcma;

.field final synthetic g:Lacr;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;Lacr;)V
    .locals 0

    .prologue
    .line 4466
    iput-object p1, p0, Lacg$67;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$67;->b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iput-object p3, p0, Lacg$67;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lacg$67;->d:Ljava/lang/String;

    iput p5, p0, Lacg$67;->e:I

    iput-object p6, p0, Lacg$67;->f:Lcma;

    iput-object p7, p0, Lacg$67;->g:Lacr;

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
    .line 4474
    const-string/jumbo v0, "queryMailDetail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 4476
    iget-object v0, p0, Lacg$67;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$67;->b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$67;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lacg$67;->g:Lacr;

    invoke-virtual {v3}, Lacr;->c()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lacg$67;->e:I

    iget-object v5, p0, Lacg$67;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    .line 4477
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4466
    .line 5469
    iget-object v0, p0, Lacg$67;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$67;->b:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v2, p0, Lacg$67;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lacg$67;->d:Ljava/lang/String;

    iget v4, p0, Lacg$67;->e:I

    iget-object v5, p0, Lacg$67;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    .line 4466
    return-void
.end method
