.class final Lpw$7;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpw;->b(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Luv;

.field final synthetic f:Lpw;


# direct methods
.method constructor <init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
    .locals 0
    .param p1, "this$0"    # Lpw;

    .prologue
    .line 158
    iput-object p1, p0, Lpw$7;->f:Lpw;

    iput-object p2, p0, Lpw$7;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lpw$7;->b:Ljava/lang/String;

    iput-wide p4, p0, Lpw$7;->c:J

    iput-boolean p6, p0, Lpw$7;->d:Z

    iput-object p7, p0, Lpw$7;->e:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v1

    iget-object v2, p0, Lpw$7;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v3, p0, Lpw$7;->b:Ljava/lang/String;

    iget-wide v4, p0, Lpw$7;->c:J

    iget-boolean v6, p0, Lpw$7;->d:Z

    iget-object v7, p0, Lpw$7;->e:Luv;

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->changeMailFlagStatus(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V

    .line 162
    return-void
.end method
