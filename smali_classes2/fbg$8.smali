.class final Lfbg$8;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbg;->a(Ljava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfbg;


# direct methods
.method constructor <init>(Lfbg;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 349
    iput-object p1, p0, Lfbg$8;->b:Lfbg;

    iput-object p2, p0, Lfbg$8;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 349
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1352
    if-eqz p1, :cond_0

    .line 1353
    iget-object v0, p0, Lfbg$8;->b:Lfbg;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->ver:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lfbg;->a(JJ)V

    .line 1355
    :cond_0
    iget-object v0, p0, Lfbg$8;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lfbg$8;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 349
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lfbg$8;->a:Lcma;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lfbg$8;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lfbg$8;->a:Lcma;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lfbg$8;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 365
    :cond_0
    return-void
.end method
