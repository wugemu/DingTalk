.class public final Lbjt$1;
.super Ljava/lang/Object;
.source "DingGeneralRemindUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbcf;


# direct methods
.method public constructor <init>(Lbcf;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lbjt$1;->a:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1038
    if-eqz p1, :cond_0

    .line 1041
    invoke-static {}, Lbbv;->a()Lbbv;

    iget-object v0, p0, Lbjt$1;->a:Lbcf;

    invoke-static {p1, v0}, Lbbv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbcf;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingGeneralRemindUtil]showCheckInAheadRemind findDingInCache failed, code"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 46
    return-void
.end method
