.class final Lhpw$1$2$1;
.super Lcmi;
.source "DakaPopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpw$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhio;

.field final synthetic b:Lhpw$1$2;


# direct methods
.method constructor <init>(Lhpw$1$2;Lhio;)V
    .locals 0
    .param p1, "this$2"    # Lhpw$1$2;

    .prologue
    .line 151
    iput-object p1, p0, Lhpw$1$2$1;->b:Lhpw$1$2;

    iput-object p2, p0, Lhpw$1$2$1;->a:Lhio;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 160
    sget v0, Lhdn$k;->dt_attendance_auto_checkin_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 161
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "DakaPopupWindow"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "DakaPopupWindow onConfirmClick err, planId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhpw$1$2$1;->a:Lhio;

    iget-object v4, v4, Lhio;->c:Ljava/lang/Long;

    .line 162
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " corpId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lhpw$1$2$1;->a:Lhio;

    iget-object v4, v4, Lhio;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " recordId: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lhpw$1$2$1;->a:Lhio;

    iget-object v4, v4, Lhio;->b:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " code: "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p1, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, " msg: "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p2, v2, v3

    .line 161
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 151
    .line 1154
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "DakaPopupWindow"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "DakaPopupWindow onConfirmClick success planId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhpw$1$2$1;->a:Lhio;

    iget-object v4, v4, Lhio;->c:Ljava/lang/Long;

    .line 1155
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " corpId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lhpw$1$2$1;->a:Lhio;

    iget-object v4, v4, Lhio;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " recordId: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lhpw$1$2$1;->a:Lhio;

    iget-object v4, v4, Lhio;->b:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1154
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
