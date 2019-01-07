.class final Lpw$4;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Luv;

.field final synthetic f:Lpw;


# direct methods
.method constructor <init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V
    .locals 0
    .param p1, "this$0"    # Lpw;

    .prologue
    .line 107
    iput-object p1, p0, Lpw$4;->f:Lpw;

    iput-object p2, p0, Lpw$4;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lpw$4;->b:Ljava/lang/String;

    iput-wide p4, p0, Lpw$4;->c:J

    iput-wide p6, p0, Lpw$4;->d:J

    iput-object p8, p0, Lpw$4;->e:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 110
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v1

    iget-object v2, p0, Lpw$4;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v3, p0, Lpw$4;->b:Ljava/lang/String;

    iget-wide v4, p0, Lpw$4;->c:J

    iget-wide v6, p0, Lpw$4;->d:J

    iget-object v8, p0, Lpw$4;->e:Luv;

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->syncchronizeFlag(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V

    .line 111
    return-void
.end method
