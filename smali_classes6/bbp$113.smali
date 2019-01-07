.class public final Lbbp$113;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1067
    iput-object p1, p0, Lbbp$113;->c:Lbbp;

    iput-object p2, p0, Lbbp$113;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbp$113;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1070
    iget-object v0, p0, Lbbp$113;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$113;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbp$113;->b:Lcma;

    .line 4518
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$38;

    invoke-direct {v4, v0, v2}, Lbbo$38;-><init>(Lbbo;Lcma;)V

    .line 5074
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5076
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    const-string/jumbo v0, "checkInMeetingInvitation failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "qrCode is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5079
    :goto_0
    return-void

    .line 5082
    :cond_0
    new-instance v2, Lbbk$54;

    invoke-direct {v2, v3, v4}, Lbbk$54;-><init>(Lbbk;Lcma;)V

    .line 5100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] checkInMeetingInvitation."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5101
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5102
    new-instance v4, Lbbk$55;

    invoke-direct {v4, v3, v2}, Lbbk$55;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->checkInMeetingInvitation(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
