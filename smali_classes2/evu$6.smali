.class final Levu$6;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 475
    iput-object p1, p0, Levu$6;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 5
    .param p1, "messageEvent"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 478
    if-eqz p1, :cond_0

    iget v0, p1, Lcjo$b;->b:I

    const/16 v1, 0x7e4

    if-eq v0, v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;

    if-eqz v0, :cond_0

    .line 485
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Update biz info because push force"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lewh;->a(ZLcma;)V

    .line 487
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lewh;->b(ZLcma;)V

    goto :goto_0
.end method
