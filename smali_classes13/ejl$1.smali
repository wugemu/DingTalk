.class public final Lejl$1;
.super Ljava/lang/Object;
.source "ContactTesting.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejl;


# direct methods
.method public constructor <init>(Lejl;)V
    .locals 0
    .param p1, "this$0"    # Lejl;

    .prologue
    .line 55
    iput-object p1, p0, Lejl$1;->a:Lejl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    .line 1058
    iget-object v0, p0, Lejl$1;->a:Lejl;

    .line 2012
    iget-object v0, v0, Lejl;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;

    .line 1058
    const/4 v1, 0x1

    const-string/jumbo v2, "testGetOrgEmployeeProfileByMobile\u6b63\u5e38\u6d41 \u63a5\u53e3\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;->a(ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lejl$1;->a:Lejl;

    .line 1012
    iget-object v0, v0, Lejl;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;

    .line 68
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "testGetOrgEmployeeProfileByMobile\u6b63\u5e38\u6d41 \u63a5\u53e3\u5931\u8d25 code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;->b(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 64
    return-void
.end method
