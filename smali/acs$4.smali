.class final Lacs$4;
.super Landroid/os/Handler;
.source "MailNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacs;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacs;


# direct methods
.method constructor <init>(Lacs;)V
    .locals 0
    .param p1, "this$0"    # Lacs;

    .prologue
    .line 417
    iput-object p1, p0, Lacs$4;->a:Lacs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 421
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lyc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lyc;

    move-object v0, v2

    .line 422
    .local v0, "event":Lyc;
    :goto_0
    if-nez v0, :cond_1

    .line 439
    :goto_1
    return-void

    .end local v0    # "event":Lyc;
    :cond_0
    move-object v0, v1

    .line 421
    goto :goto_0

    .line 426
    .restart local v0    # "event":Lyc;
    :cond_1
    iget-object v2, v0, Lyc;->g:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lyc;->g:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object v1, v2

    .line 428
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 430
    :pswitch_0
    iget-object v2, p0, Lacs$4;->a:Lacs;

    const/4 v3, 0x0

    iget-object v4, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2, v3, v1, v4}, Lacs;->a(Lacs;ILcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_1

    .line 433
    :pswitch_1
    iget-object v2, p0, Lacs$4;->a:Lacs;

    const/4 v3, 0x1

    iget-object v4, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2, v3, v1, v4}, Lacs;->a(Lacs;ILcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_1

    .line 436
    :pswitch_2
    iget-object v2, p0, Lacs$4;->a:Lacs;

    const/4 v3, 0x2

    iget-object v4, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2, v3, v1, v4}, Lacs;->a(Lacs;ILcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_1

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
