.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;
.super Ljava/lang/Object;
.source "CommonMailAdditionApiImpl.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->addMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

.field final synthetic val$eventCenter:Lya;

.field final synthetic val$listener:Lxv;

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;Ljava/lang/String;Lxv;Lya;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$mailServerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$listener:Lxv;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$eventCenter:Lya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lyc;)V
    .locals 2
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$mailServerId:Ljava/lang/String;

    iget-object v1, p1, Lyc;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 143
    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 144
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$listener:Lxv;

    iget-object v1, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-interface {v0, v1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$eventCenter:Lya;

    invoke-interface {v0, p0}, Lya;->a(Lyb;)V

    .line 152
    :cond_1
    return-void

    .line 145
    :cond_2
    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;->val$listener:Lxv;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
