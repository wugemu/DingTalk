.class final Lhky$2;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"

# interfaces
.implements Lcit$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhky;


# direct methods
.method constructor <init>(Lhky;)V
    .locals 0
    .param p1, "this$0"    # Lhky;

    .prologue
    .line 141
    iput-object p1, p0, Lhky$2;->a:Lhky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceiver(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 144
    const-string/jumbo v1, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "wifi scan:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lhky$2;->a:Lhky;

    .line 145
    invoke-static {v5}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, " size:"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    if-nez p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 144
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lhky$2;->a:Lhky;

    invoke-static {v0, v8}, Lhky;->a(Lhky;I)I

    .line 147
    iget-object v0, p0, Lhky$2;->a:Lhky;

    invoke-static {v0}, Lhky;->c(Lhky;)V

    .line 148
    return-void

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
