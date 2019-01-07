.class final Lpw$2;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Luv;

.field final synthetic e:Lpw;


# direct methods
.method constructor <init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V
    .locals 0
    .param p1, "this$0"    # Lpw;

    .prologue
    .line 76
    iput-object p1, p0, Lpw$2;->e:Lpw;

    iput-object p2, p0, Lpw$2;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lpw$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lpw$2;->c:Ljava/util/List;

    iput-object p5, p0, Lpw$2;->d:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    iget-object v1, p0, Lpw$2;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lpw$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lpw$2;->c:Ljava/util/List;

    iget-object v4, p0, Lpw$2;->d:Luv;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->deleteMessage(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V

    .line 80
    return-void
.end method
