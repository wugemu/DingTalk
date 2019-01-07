.class final Lacg$64$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lacg$64;


# direct methods
.method constructor <init>(Lacg$64;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacg$64;

    .prologue
    .line 4276
    iput-object p1, p0, Lacg$64$1;->b:Lacg$64;

    iput-object p2, p0, Lacg$64$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4279
    iget-object v0, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v0, v0, Lacg$64;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v0, v0, Lacg$64;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg$64$1;->a:Ljava/lang/String;

    .line 4280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lacg$64$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lacg$64$1;->a:Ljava/lang/String;

    .line 4281
    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4282
    iget-object v0, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v0, v0, Lacg$64;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lacg$64$1$1;

    invoke-direct {v1, p0}, Lacg$64$1$1;-><init>(Lacg$64$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4292
    :goto_0
    return-void

    .line 4290
    :cond_0
    iget-object v0, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v0, v0, Lacg$64;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v1, v1, Lacg$64;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lacg$64$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v3, v3, Lacg$64;->d:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v4, p0, Lacg$64$1;->b:Lacg$64;

    iget v4, v4, Lacg$64;->e:I

    iget-object v5, p0, Lacg$64$1;->b:Lacg$64;

    iget-object v5, v5, Lacg$64;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;ILcma;)V

    goto :goto_0
.end method
