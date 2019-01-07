.class public final Lejl$2;
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
    .line 75
    iput-object p1, p0, Lejl$2;->a:Lejl;

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
    .line 75
    .line 2078
    iget-object v0, p0, Lejl$2;->a:Lejl;

    .line 3012
    iget-object v0, v0, Lejl;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;

    .line 2078
    const/4 v1, 0x1

    const-string/jumbo v2, "testGetOrgEmployeeProfileByMobile\u5f02\u5e38\u6d41 \u63a5\u53e3\u5931\u8d25 \u4e0d\u80fd\u67e5\u8be2\u975e\u81ea\u5df1\u4f01\u4e1a\u7684"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;->b(ILjava/lang/String;)V

    .line 75
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
    const/4 v3, 0x1

    .line 88
    const-string/jumbo v0, "12005"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lejl$2;->a:Lejl;

    .line 1012
    iget-object v0, v0, Lejl;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;

    .line 89
    const-string/jumbo v1, "testGetOrgEmployeeProfileByMobile\u5f02\u5e38\u6d41 \u63a5\u53e3\u6210\u529f"

    invoke-interface {v0, v3, v1}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;->a(ILjava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lejl$2;->a:Lejl;

    .line 2012
    iget-object v0, v0, Lejl;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "testGetOrgEmployeeProfileByMobile\u5f02\u5e38\u6d41 \u63a5\u53e3\u5931\u8d25  code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 84
    return-void
.end method
