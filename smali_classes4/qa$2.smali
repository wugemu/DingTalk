.class final Lqa$2;
.super Ljava/lang/Object;
.source "SummaryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqa;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLuv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Luv;

.field final synthetic e:Lqa;


# direct methods
.method constructor <init>(Lqa;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLuv;)V
    .locals 0
    .param p1, "this$0"    # Lqa;

    .prologue
    .line 58
    iput-object p1, p0, Lqa$2;->e:Lqa;

    iput-object p2, p0, Lqa$2;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lqa$2;->b:Ljava/lang/String;

    iput-wide p4, p0, Lqa$2;->c:J

    iput-object p6, p0, Lqa$2;->d:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    iget-object v1, p0, Lqa$2;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lqa$2;->b:Ljava/lang/String;

    iget-wide v4, p0, Lqa$2;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lqa$2;->d:Luv;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEml(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Luv;)V

    .line 62
    return-void
.end method
