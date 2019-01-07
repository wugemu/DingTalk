.class final Lqa$1;
.super Ljava/lang/Object;
.source "SummaryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqa;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Luv;

.field final synthetic i:Lqa;


# direct methods
.method constructor <init>(Lqa;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
    .locals 0
    .param p1, "this$0"    # Lqa;

    .prologue
    .line 42
    iput-object p1, p0, Lqa$1;->i:Lqa;

    iput-object p2, p0, Lqa$1;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lqa$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lqa$1;->c:J

    iput-object p6, p0, Lqa$1;->d:Ljava/lang/String;

    iput-object p7, p0, Lqa$1;->e:Ljava/lang/String;

    iput-object p8, p0, Lqa$1;->f:Ljava/lang/String;

    iput-wide p9, p0, Lqa$1;->g:J

    iput-object p11, p0, Lqa$1;->h:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    iget-object v1, p0, Lqa$1;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lqa$1;->b:Ljava/lang/String;

    iget-wide v3, p0, Lqa$1;->c:J

    iget-object v5, p0, Lqa$1;->d:Ljava/lang/String;

    iget-object v6, p0, Lqa$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lqa$1;->f:Ljava/lang/String;

    iget-wide v8, p0, Lqa$1;->g:J

    iget-object v10, p0, Lqa$1;->h:Luv;

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchMailSummary(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V

    .line 46
    return-void
.end method
