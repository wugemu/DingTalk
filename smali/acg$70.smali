.class final Lacg$70;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/util/List;Lcma;)V
    .locals 0

    .prologue
    .line 4645
    iput-object p1, p0, Lacg$70;->a:Ljava/util/List;

    iput-object p2, p0, Lacg$70;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4649
    .local v0, "mailDoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;>;"
    iget-object v2, p0, Lacg$70;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lacg$70;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4650
    iget-object v2, p0, Lacg$70;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 4651
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v1, :cond_0

    .line 4652
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4656
    .end local v1    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    iget-object v2, p0, Lacg$70;->b:Lcma;

    if-eqz v2, :cond_2

    .line 4657
    iget-object v2, p0, Lacg$70;->b:Lcma;

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4659
    :cond_2
    return-void
.end method
