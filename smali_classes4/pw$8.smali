.class final Lpw$8;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V
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

.field final synthetic g:Luv;

.field final synthetic h:Lpw;


# direct methods
.method constructor <init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V
    .locals 0
    .param p1, "this$0"    # Lpw;

    .prologue
    .line 167
    iput-object p1, p0, Lpw$8;->h:Lpw;

    iput-object p2, p0, Lpw$8;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lpw$8;->b:Ljava/lang/String;

    iput-wide p4, p0, Lpw$8;->c:J

    iput-object p6, p0, Lpw$8;->d:Ljava/lang/String;

    iput-object p7, p0, Lpw$8;->e:Ljava/lang/String;

    iput-object p8, p0, Lpw$8;->f:Ljava/lang/String;

    iput-object p9, p0, Lpw$8;->g:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v1

    iget-object v2, p0, Lpw$8;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v3, p0, Lpw$8;->b:Ljava/lang/String;

    iget-wide v4, p0, Lpw$8;->c:J

    iget-object v6, p0, Lpw$8;->d:Ljava/lang/String;

    iget-object v7, p0, Lpw$8;->e:Ljava/lang/String;

    iget-object v8, p0, Lpw$8;->f:Ljava/lang/String;

    iget-object v9, p0, Lpw$8;->g:Luv;

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchMailDetail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V

    .line 171
    return-void
.end method
